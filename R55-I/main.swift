//
//  main.swift
//  R55-I
//
//  Created by SSR on 2023/3/16.
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
    func maxDepth(_ root: TreeNode?) -> Int {
        if let root = root {
            let left = maxDepth(root.left)
            let right = maxDepth(root.right)
            return max(left, right) + 1
        } else {
            return 0
        }
    }
}

/**剑指 Offer 55 - I. 二叉树的深度
 * See: https://leetcode.cn/problems/er-cha-shu-de-shen-du-lcof/
 * 递归去找下一个节点的值，直到叶子结点
 */
