//
//  main.swift
//  R06
//
//  Created by SSR on 2023/2/28.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    var ary = [Int]()
    func reversePrint(_ head: ListNode?) -> [Int] {
        func reverse(_ head: ListNode?) {
            if let head = head {
                ary.insert(head.val, at: 0)
                reverse(head.next)
            }
        }
        
        ary = [Int]()
        reverse(head)
        return ary
    }
}

/**剑指 Offer 06. 从尾到头打印链表
 * See: https://leetcode.cn/problems/cong-wei-dao-tou-da-yin-lian-biao-lcof/
 * 递归思路，通过内部再定义一个函数，用于递归，每次将节点加入到头部，这样就可以实现从尾到头了。
 */
