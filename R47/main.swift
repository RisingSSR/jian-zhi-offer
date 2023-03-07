//
//  main.swift
//  R47
//
//  Created by SSR on 2023/3/7.
//

import Foundation

class Solution {
    func maxValue(_ grid: [[Int]]) -> Int {
        if grid.isEmpty { return 0 }
        var dp = Array(repeating: Array(repeating: 0, count: grid[0].count), count: grid.count)
        for m in 0..<grid.count {
            for n in 0..<grid[m].count {
                if m == 0 && n == 0 {   // 出点
                    dp[m][n] = grid[0][0]
                } else if m == 0 {  // 只存在左边
                    dp[m][n] = dp[m][n - 1] + grid[m][n]
                } else if n == 0 {  // 只存在上边
                    dp[m][n] = dp[m - 1][n] + grid[m][n]
                } else {
                    dp[m][n] = max(dp[m - 1][n], dp[m][n - 1]) + grid[m][n]
                }
            }
        }
        return dp.last!.last!
    }
}

/**剑指 Offer 47. 礼物的最大价值
 * See: https://leetcode.cn/problems/li-wu-de-zui-da-jie-zhi-lcof/
 * 最主要的动态方程就是`dp[m][n] = max(dp[m - 1][n], dp[m][n - 1]) + grid[m][n]`
 * 剩下就是考虑边界点的问题了。
 */
