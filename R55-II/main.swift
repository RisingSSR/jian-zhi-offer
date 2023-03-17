//
//  main.swift
//  R55-II
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
    func isBalanced(_ root: TreeNode?) -> Bool {
        if let root = root {
            return abs(depth(root.left) - depth(root.right)) <= 1
                && isBalanced(root.left) && isBalanced(root.right)
        } else {
            return true
        }
    }
    func depth(_ root: TreeNode?) -> Int {
        if let root = root {
            return max(depth(root.left), depth(root.right)) + 1
        } else {
            return 0
        }
    }
}

/**剑指 Offer 55 - II. 平衡二叉树
 * See: https://leetcode.cn/problems/ping-heng-er-cha-shu-lcof/?envType=study-plan&id=lcof&plan=lcof&plan_progress=f22rlgj
 * 递归知道深度，然后对比深度的大小
 */
