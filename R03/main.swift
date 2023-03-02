//
//  main.swift
//  R03
//
//  Created by SSR on 2023/3/2.
//

import Foundation

class Solution {
    func findRepeatNumber(_ nums: [Int]) -> Int {
        var set = Set<Int>()
        for n in nums {
            if set.contains(n) {
                return n
            }
            set.insert(n)
        }
        return set.first!
    }
}

/**剑指 Offer 03. 数组中重复的数字
 * See: https://leetcode.cn/problems/shu-zu-zhong-zhong-fu-de-shu-zi-lcof/
 * 利用set去判断之前的数是否存在
 */
