//
//  main.swift
//  R32-3
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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        var res = [[Int]]()
        var nodes = [root]
        var flag = true
        while nodes.count > 0 {
            var arr = [TreeNode]()
            var temp = [Int]()
            for i in 0..<nodes.count {
                if flag {
                    let node = nodes[i]
                    temp.append(node.val)
                } else {
                    let node = nodes[nodes.count - i - 1]
                    temp.append(node.val)
                }
                let node = nodes[i]
                if node.left != nil {
                    arr.append(node.left!)
                }
                if node.right != nil {
                    arr.append(node.right!)
                }
            }
            res.append(temp)
            nodes = arr
            flag = !flag
        }
        return res
    }
}

/**剑指 Offer 32 - III. 从上到下打印二叉树 III
 * See: https://leetcode.cn/problems/cong-shang-dao-xia-da-yin-er-cha-shu-iii-lcof/
 * 根据2改变，那么利用一个flag去判断就好了。
 */
