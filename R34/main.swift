//
//  main.swift
//  R34
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
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func pathSum(_ root: TreeNode?, _ target: Int) -> [[Int]] {
        
        func find(target: Int, in root: TreeNode?) {
            guard let rootNode = root else {
                return
            }
            stack.append(rootNode.val)
            sum += rootNode.val
            
            let isYeNode = rootNode.left == nil && rootNode.right == nil
            if sum == target && isYeNode {
                result.append(stack)
            }
            
            find(target: target, in: rootNode.left)
            find(target: target, in: rootNode.right)

            stack.removeLast()
            sum -= rootNode.val
        }

        var result = [[Int]]()
        var stack = [Int]()
        var sum = 0
        
        find(target: target, in: root)

        return result;
    }
}
