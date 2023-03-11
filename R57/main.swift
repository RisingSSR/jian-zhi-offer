//
//  main.swift
//  R57
//
//  Created by SSR on 2023/3/11.
//

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var left = 0, right = nums.count - 1
        while nums[left] + nums[right] != target && left < right {
            if nums[left] + nums[right] > target {
                right -= 1
            } else {
                left += 1
            }
        }
        return [nums[left], nums[right]]
    }
}

/**剑指 Offer 57. 和为s的两个数字
 * See: https://leetcode.cn/problems/he-wei-sde-liang-ge-shu-zi-lcof/
 * 因为是排好序的，直接左右指针就行
 */
