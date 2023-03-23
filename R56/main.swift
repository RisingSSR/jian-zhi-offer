//
//  main.swift
//  R56
//
//  Created by SSR on 2023/3/23.
//

import Foundation

class Solution {
    func singleNumbers(_ nums: [Int]) -> [Int] {
        var ret = 0, div = 1
        for num in nums {
            ret ^= num
        }
        while (div & ret) == 0 {
            div <<= 1
        }
        var a = 0, b = 0
        for num in nums {
            if (div & num) != 0 {
                a ^= num
            } else {
                b ^= num
            }
        }
        return [a, b]
    }
}

/**剑指 Offer 56 - I. 数组中数字出现的次数
 * See: https://leetcode.cn/problems/shu-zu-zhong-shu-zi-chu-xian-de-ci-shu-lcof/
 * ^= 所有的，然后从后往前看就好
 */
