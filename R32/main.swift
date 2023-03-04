//
//  main.swift
//  R32
//
//  Created by SSR on 2023/3/4.
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
    func levelOrder(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        var nodes = [root]
        while !nodes.isEmpty {
            var childs = [TreeNode]()
            for n in nodes {
                if let node = n {
                    res.append(node.val)
                    if let left = node.left {
                        childs.append(left)
                    }
                    if let right = node.right {
                        childs.append(right)
                    }
                }
            }
            nodes = childs
        }
        return res
    }
}

/**剑指 Offer 32 - I. 从上到下打印二叉树
 * See: https://leetcode.cn/problems/cong-shang-dao-xia-da-yin-er-cha-shu-lcof/
 * 典型层序遍历，这里利用nodes作为队列，每次得到的新的子序列childs成为新的队列。
 */
