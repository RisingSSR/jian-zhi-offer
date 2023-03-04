//
//  main.swift
//  R32-2
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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        var result = [[Int]]()
        var queue = [root]
        while !queue.isEmpty {
            var levels = [Int]()
            for _ in 0..<queue.count {
                let node = queue.removeFirst()
                levels.append(node.val)
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
            result.append(levels)
        }
        return result
    }
}

/**剑指 Offer 32 - II. 从上到下打印二叉树 II
 * See: https://leetcode.cn/problems/cong-shang-dao-xia-da-yin-er-cha-shu-ii-lcof/?envType=study-plan&id=lcof&plan=lcof&plan_progress=f22rlgj
 * 和之前不同的是，这里的root是必须有值的，相当于queue是[TreeNode]类型，而且在for的时候，因为要removeFirst()，所以直接for in另一个循环。
 */
