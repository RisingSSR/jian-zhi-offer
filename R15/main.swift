//
//  main.swift
//  R15
//
//  Created by SSR on 2023/3/21.
//

import Foundation

class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var sum = 0, n = n
        while n > 0 {
            sum += n & 1
            n = n >> 1
        }
        return sum
    }
}

print(Solution().hammingWeight(4294967293))

/**剑指 Offer 15. 二进制中1的个数
 * See: https://leetcode.cn/problems/er-jin-zhi-zhong-1de-ge-shu-lcof/
 * 简单
 */
