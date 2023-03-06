//
//  main.swift
//  R10-II
//
//  Created by SSR on 2023/3/6.
//

import Foundation

class Solution {
    func numWays(_ n: Int) -> Int {
        var a = 1
        var b = 1
        var sum = 0
        for _ in 0..<n {
            sum = (a + b) % 1000000007
            (a, b) = (b, sum)
        }
        return a
    }
}

/**剑指 Offer 10- II. 青蛙跳台阶问题
 * See: https://leetcode.cn/problems/qing-wa-tiao-tai-jie-wen-ti-lcof/
 * 对于0和1，其实走了for循环后，答案还是一样的，所以这里的dp实际上只需要走前两数
 */
