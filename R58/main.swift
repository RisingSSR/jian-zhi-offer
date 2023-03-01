//
//  main.swift
//  R58
//
//  Created by SSR on 2023/3/1.
//

import Foundation

class Solution {
    func reverseLeftWords(_ s: String, _ n: Int) -> String {
        String(s.dropFirst(n)) + String(s.prefix(n))
    }
}

/**剑指 Offer 58 - II. 左旋转字符串
 * See: https://leetcode.cn/problems/zuo-xuan-zhuan-zi-fu-chuan-lcof/
 * 利用Swift特有性质
 */
