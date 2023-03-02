//
//  main.swift
//  R53-2
//
//  Created by SSR on 2023/3/2.
//

import Foundation

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
//        (nums.count + 1) * nums.count / 2 - nums.reduce(0, +)
        var old = -1
        for n in nums  {
            if n != old + 1 {
                return old + 1
            }
            old = n
        }
        return nums.last! + 1
    }
}

/**剑指 Offer 53 - II. 0～n-1中缺失的数字
 * See: https://leetcode.cn/problems/que-shi-de-shu-zi-lcof/
 * 第一种是利用和去减
 */
