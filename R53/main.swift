//
//  main.swift
//  R53
//
//  Created by SSR on 2023/3/2.
//

import Foundation

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var count = 0
        for n in nums {
            if n == target {
                count += 1
            }
        }
        return count
    }
}

/**剑指 Offer 53 - I. 在排序数组中查找数字 I
 * See: https://leetcode.cn/problems/zai-pai-xu-shu-zu-zhong-cha-zhao-shu-zi-lcof/
 */
