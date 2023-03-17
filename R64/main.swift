//
//  main.swift
//  R64
//
//  Created by SSR on 2023/3/17.
//

import Foundation

class Solution {
    func sumNums(_ n: Int) -> Int {
        var sum = n
        let _ = (n > 0) && { sum += sumNums(n - 1); return true }()
        return sum;
    }
}

print(Solution().sumNums(9))

/**剑指 Offer 64. 求1+2+…+n
 * See: https://leetcode.cn/problems/qiu-12n-lcof/
 * 利用 && 的运算规则以及递归来实现
 */
