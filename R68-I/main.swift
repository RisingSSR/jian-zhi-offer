//
//  main.swift
//  R68-I
//
//  Created by SSR on 2023/3/17.
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

class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        var root = root
        while let t = root {
            if let p = p, let q = q {
                if p.val < t.val && q.val < t.val {
                    root = t.left
                } else if p.val > t.val && q.val > t.val {
                    root = t.right
                } else {
                    break
                }
            } else {
                break
            }
        }
        return root
    }
}

/**剑指 Offer 68 - I. 二叉搜索树的最近公共祖先
 * See: https://leetcode.cn/problems/er-cha-sou-suo-shu-de-zui-jin-gong-gong-zu-xian-lcof/
 * 搜索数有个比较值的特点，所以可以用比较值来算
 */
