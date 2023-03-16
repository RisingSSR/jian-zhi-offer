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
