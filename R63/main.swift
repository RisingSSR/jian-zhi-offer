//
//  main.swift
//  R63
//
//  Created by SSR on 2023/3/6.
//

import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minValue = Int.max, maxValue = 0
        var saleValue = 0
        for idx in 0..<prices.count {
            if minValue > prices[idx] {
                minValue = prices[idx]
                continue
            }
            saleValue = prices[idx] - minValue
            maxValue = max(maxValue, saleValue)
        }
        return maxValue
    }
}

print(Solution().maxProfit([7,1,5,3,6,4]))

/**剑指 Offer 63. 股票的最大利润
 * See: https://leetcode.cn/problems/gu-piao-de-zui-da-li-run-lcof/
 * 定义一个最小最大，然后再记录差值，差值永远去最大就可以了
 */
