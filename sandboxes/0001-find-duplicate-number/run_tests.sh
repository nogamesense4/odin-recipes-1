#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

python3 - <<'PY'
from solution import Solution

TESTS = [
    ("example 1", [1, 3, 4, 2, 2], 2),
    ("example 2", [3, 1, 3, 4, 2], 3),
    ("example 3", [3, 3, 3, 3, 3], 3),
    ("adversarial A: min duplicate", [1, 1], 1),
    ("adversarial B: all same", [2, 2, 2, 2, 2], 2),
    ("adversarial C: non-adjacent dup", [1, 4, 4, 2, 3], 4),
]

s = Solution()
passed = 0
for name, nums, expected in TESTS:
  original = nums[:]
  got = s.findDuplicate(nums)
  if nums != original:
    print(f"FAIL {name}: array was modified")
    continue
  if got == expected:
    print(f"PASS {name}")
    passed += 1
  else:
    print(f"FAIL {name}: expected {expected}, got {got}")

print(f"\n{passed}/{len(TESTS)} passed")
raise SystemExit(0 if passed == len(TESTS) else 1)
PY
