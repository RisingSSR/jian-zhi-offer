//
//  main.swift
//  R66
//
//  Created by SSR on 2023/3/23.
//

import Foundation

class Solution {
    func constructArr(_ a: [Int]) -> [Int] {
        if (a.count == 0) { return [] }
        var answer = [Int](repeating: 1, count: a.count)
        for i in 1..<a.count {
            answer[i] = a[i - 1] * answer[i - 1]
        }
        var r = 1
        for i in (0..<a.count).reversed() {
            answer[i] *= r
            r *= a[i]
        }
        return answer
    }
}

/**剑指 Offer 66. 构建乘积数组
 * See: https://leetcode.cn/problems/gou-jian-cheng-ji-shu-zu-lcof/
 * 过去再回来就OK了
 */
