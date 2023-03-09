//
//  main.swift
//  R22
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
    func getKthFromEnd(_ head: ListNode?, _ k: Int) -> ListNode? {
        var fast = head, slow = head
        for _ in 0..<k {
            fast = fast?.next
        }
        while let p = fast {
            fast = p.next
            slow = slow?.next
        }
        return slow
    }
}

/**剑指 Offer 22. 链表中倒数第k个节点
 * See: https://leetcode.cn/problems/lian-biao-zhong-dao-shu-di-kge-jie-dian-lcof/
 * 快慢指针，将快指针提前k个位置，以快指针作为结束点，慢指针跟随移动，那么最后慢指针就是那个点
 */
