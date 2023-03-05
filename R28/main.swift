//
//  main.swift
//  R28
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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        func symmetric(compare root1: TreeNode?, to root2: TreeNode?) -> Bool {
            if root1 == nil && root2 == nil {
                return true
            }
            if root1 == nil || root2 == nil {
                return false
            }
            if root1?.val != root2?.val {
                return false
            }
            return symmetric(compare: root1?.left, to: root2?.right) && symmetric(compare: root1?.right, to: root2?.left)
        }
        return symmetric(compare: root, to: root)
    }
}
