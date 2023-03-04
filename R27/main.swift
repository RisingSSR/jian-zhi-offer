//
//  main.swift
//  R27
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
    func mirrorTree(_ root: TreeNode?) -> TreeNode? {
        if let root = root {
            let left = mirrorTree(root.left)
            let right = mirrorTree(root.right)
            root.left = right
            root.right = left
        }
        return root
    }
}

/**剑指 Offer 27. 二叉树的镜像
 * See: https://leetcode.cn/problems/er-cha-shu-de-jing-xiang-lcof/?envType=study-plan&id=lcof&plan=lcof&plan_progress=f22rlgj
 * 其实就是交换左右，只不过先得得到最下面的左右子树。
 */
