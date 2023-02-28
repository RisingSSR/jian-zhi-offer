//
//  main.swift
//  R24
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
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        } else {
            let p = reverseList(head?.next)
            head?.next?.next = head
            head?.next = nil
            return p
        }
    }
}

/**剑指 Offer 24. 反转链表
 * See: https://leetcode.cn/problems/fan-zhuan-lian-biao-lcof/
 * 采用递归，我们需要将排除掉当前的剩下的链表进行调换，最后再调换现在和剩下的。
 * 那么到最后一个链表的时候，我们需要将下一个节点去指向当前节点。然后将当前节点去指向空
 */
