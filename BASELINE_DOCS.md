# Baseline: LeetCode 287 — Find the Duplicate Number

## Problem statement

Given an array of integers `nums` containing `n + 1` integers where each integer is in the range `[1, n]` inclusive.

There is only one repeated number in `nums`, return this repeated number.

You must solve the problem **without modifying the array** `nums` and using only **constant extra space**.

### Examples

| Input | Output |
|-------|--------|
| `[1,3,4,2,2]` | `2` |
| `[3,1,3,4,2]` | `3` |
| `[3,3,3,3,3]` | `3` |

### Constraints

- `1 <= n <= 10^5`
- `nums.length == n + 1`
- `1 <= nums[i] <= n`
- All integers appear once except one which appears two or more times.

## Student attempt (session 1)

```python
class Solution:
    def findDuplicate(self, nums: List[int]) -> int:
        slow = nums[0]
        fast = nums[0]
        for i in range(1, len(nums) - 1):
            fast = nums[i + 1]
            if (slow == fast):
                return slow
            if i + 2 < len(nums):
                fast = nums[i + 2]
            slow = nums[i]
```

## Hints the student may already know (do not assume mastery)

- The problem is often solved with Floyd's cycle detection (tortoise and hare).
- Treating `nums` as edges `i -> nums[i]` can form a cycle when a value repeats.
