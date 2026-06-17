# Sandbox 0001: Find the Duplicate Number

## Your prompt

Given `nums` of length `n + 1` with values in `[1, n]` and exactly one repeated integer, return that integer.

**Hard constraints:** do not modify `nums`; O(1) extra space only.

---

## Phase 1 — Explain before you code

Answer in plain text (no code yet):

1. **Brute force:** What is the simplest approach you can think of? What are its time and space costs? Does it violate either constraint?

2. **Graph model:** If index `i` points to index `nums[i]`, what does the array `[1, 3, 4, 2, 2]` look like as a sequence of jumps starting from index `0`? Where does a duplicate value force a cycle?

3. **Your prior attempt:** You used `slow` and `fast`. In *your* loop, what did one "step" mean for each pointer? Was that the same "step" Floyd's algorithm uses on a linked list?

---

## Phase 2 — Revise and submit

Put your revised solution in `solution.py`. Run:

```bash
./sandboxes/0001-find-duplicate-number/run_tests.sh
```

When you believe it passes, paste your final code in chat. The interviewer will throw **three adversarial cases** at your logic.

---

## Adversarial cases (for after you submit)

These are reserved — do not peek until you have a candidate solution.

<details>
<summary>Case A (click after attempt)</summary>

`nums = [1, 1]` — smallest valid input; duplicate at indices 0 and 1.

</details>

<details>
<summary>Case B</summary>

`nums = [2, 2, 2, 2, 2]` — every value identical; cycle structure is degenerate.

</details>

<details>
<summary>Case C</summary>

`nums = [1, 4, 4, 2, 3]` — duplicate not at adjacent indices; index scan vs pointer chase diverge.

</details>
