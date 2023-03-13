//
//  main.swift
//  R36
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

class Solution {
    
    var head: TreeNode?, pre: TreeNode?
    func treeToDoublyList(_ root: TreeNode?) -> TreeNode? {
        guard root != nil else {
            return nil
        }
        dfs(root)
        /** 递归完成后:
         - `pre`已移至最后，可视为`tail`
         */
        head!.left = pre
        pre!.right = head
        return head
    }
    
    /** 递归逻辑:
     - 可视为`pre`不断与`cur/back`双向绑定
     - 转换图形为`Z`，即`中序遍历（LDR）`
     */
    func dfs(_ cur: TreeNode?) {
        /// 结束条件
        if cur == nil {
            return
        }
        let cur = cur!
        /// 开始规划左节点，确定前节点`pre`
        dfs(cur.left)
        /**:
         1. `pre`节点若不存在则为头结点
         */
        if pre == nil {
            head = cur
        }
        /** 最下层逻辑:
         1. 从`head`节点开始，前节点`pre`不断上移
         2. 从而双向绑定
         */
        else {
            pre!.right = cur
        }
        cur.left = pre
        pre = cur
        /**:
         - 规划右子树
         - `pre`上移完成后，应对右子树，`pre`需要下移直到右子树递归完成后
         - 后移继续规划左节点
         */
        dfs(cur.right)
    }
}

/**剑指 Offer 36. 二叉搜索树与双向链表
 * See: https://leetcode.cn/problems/er-cha-sou-suo-shu-yu-shuang-xiang-lian-biao-lcof/
 * 二叉搜索树？打不了一点
 */
