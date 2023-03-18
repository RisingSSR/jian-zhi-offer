//
//  main.swift
//  R16
//
//  Created by SSR on 2023/3/18.
//

import Foundation

class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        var res = 1.0, x = x, zn = n
        if n < 0 { zn = -zn }
        while zn > 0 {
            if zn & 1 == 1 {
                zn -= 1
                res *= x
            }
            x *= x
            zn = zn >> 1
        }
        return n < 0 ? 1 / res : res
    }
}

/**剑指 Offer 16. 数值的整数次方
 * See: https://leetcode.cn/problems/shu-zhi-de-zheng-shu-ci-fang-lcof/?envType=study-plan&id=lcof&plan=lcof&plan_progress=f22rlgj
 * 
 */
