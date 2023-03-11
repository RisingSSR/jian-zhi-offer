//
//  main.swift
//  R21
//
//  Created by SSR on 2023/3/11.
//

import Foundation

class Solution {
    func exchange(_ nums: [Int]) -> [Int] {
        nums.filter { $0 % 2 == 1 } + nums.filter { $0 % 2 == 0 }
    }
}

/**剑指 Offer 21. 调整数组顺序使奇数位于偶数前面
 * See: https://leetcode.cn/problems/diao-zheng-shu-zu-shun-xu-shi-qi-shu-wei-yu-ou-shu-qian-mian-lcof/
 * 除了这种方法，还可以利用左右指针
 */
