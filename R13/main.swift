//
//  main.swift
//  R13
//
//  Created by SSR on 2023/3/12.
//

import Foundation

class Solution {
    func movingCount(_ m: Int, _ n: Int, _ k: Int) -> Int {
        func sum(_ num: Int) -> Int {
            var num = num
            var res = 0
            while num != 0 {
                res += num % 10
                num /= 10
            }
            return res
        }
        var res = 0, maxRight = n-1, reset = true, right = maxRight
        
        for i in 0..<m {
            let sum_i = sum(i)
            if sum_i > k {
                break
            }
            reset = (i == 0 ? true : sum(i-1) > sum_i)
            if reset {
                right = maxRight
            }
            
            var j = 0
            while j <= right {
                if sum_i+sum(j) <= k {
                    res += 1
                } else if reset {
                    reset = false
                    right = j-1
                    maxRight = right
                    break
                } else {
                    let nextStart = (j / 10 + 1) * 10
                    if nextStart <= right, sum_i + sum(nextStart) <= k {
                        j = nextStart - 1
                    } else {
                        right -= 1
                        break
                    }
                }
                j += 1
            }
        }
        return res
    }
}

/**面试题13. 机器人的运动范围
 * See: https://leetcode.cn/problems/ji-qi-ren-de-yun-dong-fan-wei-lcof/
 * 神马深度，打不了一点
 */
