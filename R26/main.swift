//
//  main.swift
//  R26
//
//  Created by SSR on 2023/3/5.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func isSubStructure(_ A: TreeNode?, _ B: TreeNode?) -> Bool {
        func isEqual(_ A: TreeNode?, _ B: TreeNode?) -> Bool {
            if B == nil {
                return true
            }
            if A == nil {
                return false
            }
            if A?.val != B?.val {
                return false
            }
            return isEqual(A?.left, B?.left) && isEqual(A?.right, B?.right)
        }
        var result: Bool = false
        if A != nil && B != nil {
            if A?.val == B?.val {
                result = isEqual(A, B)
            }
            if !result {
                result = isSubStructure(A?.left, B)
            }
            if !result {
                result = isSubStructure(A?.right, B)
            }
        }
        return result
    }
}

/**剑指 Offer 26. 树的子结构
 * See: https://leetcode.cn/problems/shu-de-zi-jie-gou-lcof/
 * 有一个用于判断的isEqual，其实很像找子串里面的每一次的查找
 * 而在大循环里面，也就是isSubStructure里面，其实就是子串的大循环，遍历。
 */
