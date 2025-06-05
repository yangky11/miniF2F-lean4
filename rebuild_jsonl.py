#!/usr/bin/env python3
"""
rebuild_jsonl.py

Rebuilds the minif2f_lean4.jsonl file by parsing theorems from Valid.lean and Test.lean.
Updates each JSON entry's formal_statement and adds a formal_proof field.
Missing theorem IDs are logged.
"""
import json
import os
import re


def parse_lean_file(file_path):
    """Parse a Lean file by extracting full theorem blocks from 'theorem' to the next blank line."""
    theorems = {}
    with open(file_path, 'r', encoding='utf-8') as f:
        lines = f.readlines()
    i = 0
    n = len(lines)
    while i < n:
        line = lines[i]
        if line.lstrip().startswith('theorem '):
            # theorem name
            parts = line.lstrip().split()
            name = parts[1] if len(parts) > 1 else None
            # Collect the full theorem block until the next blank line
            block = []
            while i < n and lines[i].strip() != '':
                block.append(lines[i].rstrip())
                i += 1
            # Merge into a single text
            full_text = '\n'.join(block)
            # Split content and proof using ':= '
            if ':=' in full_text:
                # split only at the first occurrence of ':= '
                head, sep, tail = full_text.partition(':=')
                # content ends with 'sorry'
                content = f"{head}{sep} sorry"
                proof = tail.strip() or None
            else:
                raise ValueError(f"Malformed theorem block in {file_path} at line {i + 1}")
            if name:
                theorems[name] = (content, proof)
        else:
            i += 1
    return theorems


def main():
    base = os.path.dirname(os.path.abspath(__file__))
    valid_file = os.path.join(base, 'MiniF2F', 'Valid.lean')
    test_file = os.path.join(base, 'MiniF2F', 'Test.lean')
    jsonl_file = os.path.join(base, 'minif2f_lean4.jsonl')
    output_file = os.path.join(base, 'minif2f_lean4_rebuilt.jsonl')

    # parse Lean files and report counts
    valid_thm = parse_lean_file(valid_file)
    print(f"Parsed Valid.lean: {len(valid_thm)} theorems")
    test_thm = parse_lean_file(test_file)
    print(f"Parsed Test.lean: {len(test_thm)} theorems")

    all_thm = {**valid_thm, **test_thm}
    json_names = set()
    missing_json = []
    lean_names = set(all_thm.keys())

    with open(jsonl_file, 'r', encoding='utf-8') as inp, \
         open(output_file, 'w', encoding='utf-8') as outp:
        for line in inp:
            data = json.loads(line)
            # extract real theorem name from existing formal_statement
            stmt = data.get('formal_statement', '')
            m = re.search(r"theorem\s+(\w+)", stmt)
            name = m.group(1) if m else None
            data['name'] = name
            if name:
                json_names.add(name)
            if name in all_thm:
                content, proof = all_thm[name]
                # override formal_statement and add trailing 'sorry'
                data['formal_statement'] = content
                # set proof field: None if 'sorry' in proof text
                data['formal_proof'] = None if (proof and 'sorry' in proof) else proof
            else:
                if name:
                    missing_json.append(name)
            json.dump(data, outp, ensure_ascii=False)
            outp.write('\n')

    # log Lean theorems not present in JSON
    missing_lean = sorted(lean_names - json_names)
    log_file = os.path.join(base, 'missing_theorems.log')
    with open(log_file, 'w', encoding='utf-8') as lf:
        for nm in missing_lean:
            lf.write(f"{nm}\n")
    print(f"Logged {len(missing_lean)} missing Lean theorems to {log_file}")

    print(f"Rebuilt JSONL saved to {output_file}")

if __name__ == '__main__':
    main()
