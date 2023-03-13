//
//  main.swift
//  R54
//
//  Created by SSR on 2023/3/13.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
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

    func kthLargest(_ root: TreeNode?, _ k: Int) -> Int {
        return _kthLargest(root, k).1
    }

    func _kthLargest(_ root: TreeNode?, _ k: Int) -> (Int, Int) {
        if let node = root{
            let right = _kthLargest(node.right, k)
            if right.0 == 1{
                return right
            }
            if right.1 == 1{
                return (1, node.val)
            }
            return _kthLargest(node.left, right.1 - 1)
        } else {
            return (0, k)
        }
    }
}
