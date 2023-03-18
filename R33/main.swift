//
//  main.swift
//  R33
//
//  Created by SSR on 2023/3/18.
//

import Foundation

class Solution {
    func verifyPostorder(_ postorder: [Int]) -> Bool {
        func recur(_ postorder: [Int], i: Int, j: Int) -> Bool {
            if i >= j {
                return true
            }
            var p = i
            while postorder[p] < postorder[j] {
                p += 1
            }
            let m = p
            while postorder[p] > postorder[j] {
                p += 1
            }
            return p == j && recur(postorder, i: i, j: m - 1) && recur(postorder, i: m, j: j - 1)
        }
        return recur(postorder, i: 0, j: postorder.count - 1)
    }
}

/**剑指 Offer 33. 二叉搜索树的后序遍历序列
 * See: https://leetcode.cn/problems/er-cha-sou-suo-shu-de-hou-xu-bian-li-xu-lie-lcof/
 * 
 */
