//
//  main.swift
//  R25
//
//  Created by SSR on 2023/3/10.
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
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let head = ListNode(0)
        var phead: ListNode? = head
        
        var l1 = l1, l2 = l2
        while let n1 = l1, let n2 = l2 {
            if n1.val < n2.val {
                phead?.next = n1
                l1 = n1.next
            } else {
                phead?.next = n2
                l2 = n2.next
            }
            phead = phead?.next
        }
        phead?.next = l1 ?? l2
        
        return head.next
    }
}

/**剑指 Offer 25. 合并两个排序的链表
 * See: https://leetcode.cn/problems/he-bing-liang-ge-pai-xu-de-lian-biao-lcof/
 * 对于两个已经排序的链表，我们需要创建一个head（参照数据结构的链表），这样的计算会更加简单。
 */
