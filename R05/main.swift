//
//  main.swift
//  R05
//
//  Created by SSR on 2023/3/1.
//

import Foundation

class Solution {
    func replaceSpace(_ s: String) -> String {
        s.components(separatedBy: " ").joined(separator: "%20")
    }
}

/**剑指 Offer 05. 替换空格
 * See: https://leetcode.cn/problems/ti-huan-kong-ge-lcof/?envType=study-plan&id=lcof&plan=lcof&plan_progress=f22rlgj
 * 利用Swift特有性质
 */
