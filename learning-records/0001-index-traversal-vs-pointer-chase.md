# Learning Record 0001 — Index traversal vs pointer chase

**Date:** Session 1  
**Problem:** LC 287 Find the Duplicate Number  
**Sandbox:** `0001-find-duplicate-number`

## What happened

Student named variables `slow` and `fast` (suggesting familiarity with Floyd's algorithm) but the loop advances by **array index** `i`, assigning `slow = nums[i]` and `fast = nums[i+1]` / `nums[i+2]`.

## Misconception

**Treating Floyd's cycle detection as "compare elements at nearby indices"** instead of **repeatedly following `nums[current]` as a pointer**.

In the linked-list formulation:
- Node `i` has an edge to node `nums[i]`.
- `slow` moves one step: `slow = nums[slow]`
- `fast` moves two steps: `fast = nums[nums[fast]]`

Index-order scanning (`nums[0], nums[1], nums[2]...`) walks the **storage layout** of the array, not the **implicit graph** defined by the problem.

## Re-test in next sandbox

Before accepting any cycle-based solution, ask: "What does one 'step' mean in your model — incrementing `i`, or following `nums[x]`?"
