//
//  main.swift
//  R56-II
//
//  Created by SSR on 2023/3/23.
//

import Foundation

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var ones = 0, twos = 0
        for num in nums {
            ones = ones ^ num & ~twos
            twos = twos ^ num & ~ones
        }
        return ones
    }
}

/**剑指 Offer 56 - II. 数组中数字出现的次数 II
 * See: https://leetcode.cn/problems/shu-zu-zhong-shu-zi-chu-xian-de-ci-shu-ii-lcof/
 */
