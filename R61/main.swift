//
//  main.swift
//  R61
//
//  Created by SSR on 2023/3/1.
//

import Foundation

class Solution {
    func isStraight(_ nums: [Int]) -> Bool {
        var set = Set<Int>()
        var kmin = 14, kmax = 0
        for num in nums {
            if num == 0 {
                continue
            }
            if set.contains(num) {
                return false
            }
            kmax = max(kmax, num)
            kmin = min(kmin, num)
            set.insert(num)
        }
        return kmax - kmin < 5
    }
}

let s = Solution()
let a = s.isStraight([1,2,3,4,5])
print(a)

/**面试题61. 扑克牌中的顺子
 * See: https://leetcode.cn/problems/bu-ke-pai-zhong-de-shun-zi-lcof/
 * 用set去判断是否出现重复，如果为任意牌则直接跳过，再去判最大最小
 */
