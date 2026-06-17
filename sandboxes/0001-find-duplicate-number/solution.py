from typing import List


class Solution:
    def findDuplicate(self, nums: List[int]) -> int:
        slow = nums[0]
        fast = nums[0]
        for i in range(1, len(nums) - 1):
            fast = nums[i + 1]
            if slow == fast:
                return slow
            if i + 2 < len(nums):
                fast = nums[i + 2]
            slow = nums[i]
