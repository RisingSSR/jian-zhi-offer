//
//  main.swift
//  R18
//
//  Created by SSR on 2023/3/9.
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
    func deleteNode(_ head: ListNode?, _ val: Int) -> ListNode? {
        var head = head
        while let now = head, now.val == val {
            head = now.next
        }
        var pre = head
        while let now = pre {
            if let next = now.next, next.val == val {
                now.next = next.next
            }
            pre = now.next
        }
        return head
    }
}

/**剑指 Offer 18. 删除链表的节点
 * See: https://leetcode.cn/problems/shan-chu-lian-biao-de-jie-dian-lcof/
 * 首先判断头节点是不是，其次就是去找正常的数是不是
 */
