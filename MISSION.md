# Mission: Find the Duplicate Number (LC 287)

## Why this problem
Practice constant-space, in-place reasoning on arrays — specifically the gap between *knowing* Floyd's cycle detection exists and *executing* it correctly under constraints.

## Success criteria
- Explain a brute-force approach and why it violates (or satisfies) the constraints.
- Articulate why a duplicate in `nums` implies a cycle when the array is treated as a directed graph.
- Implement a solution that passes adversarial edge cases without modifying `nums` and using only O(1) extra space.

## Constraints (from problem)
- Do not modify `nums`.
- Use only constant extra space.
- `nums.length == n + 1`, values in `[1, n]`, exactly one repeated value.

## Current sandbox
`./sandboxes/0001-find-duplicate-number/`
