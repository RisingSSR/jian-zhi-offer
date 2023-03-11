//
//  main.swift
//  R58-I
//
//  Created by SSR on 2023/3/11.
//

import Foundation

class Solution {
    func reverseWords(_ s: String) -> String {
        s.split(separator: " ").map { String( $0 ) }.reversed().joined(separator: " ")
    }
}

/**剑指 Offer 58 - I. 翻转单词顺序
 * See: https://leetcode.cn/problems/fan-zhuan-dan-ci-shun-xu-lcof/
 * 
 */
