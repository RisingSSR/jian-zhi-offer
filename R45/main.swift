//
//  main.swift
//  R45
//
//  Created by SSR on 2023/3/14.
//

import Foundation

class Solution {
    func minNumber(_ nums: [Int]) -> String {
        nums.sorted { "\($0)\($1)" < "\($1)\($0)" }.reduce("") { "\($0)\($1)" }
    }
}

/**面试题45. 把数组排成最小的数
 * See: https://leetcode.cn/problems/ba-shu-zu-pai-cheng-zui-xiao-de-shu-lcof/
 * 
 */
