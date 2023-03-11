//
//  main.cpp
//  R52
//
//  Created by SSR on 2023/3/10.
//

#include <iostream>

using namespace::std;

struct ListNode {
    int val;
    ListNode *next;
    ListNode(int x) : val(x), next(NULL) {}
};

/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode(int x) : val(x), next(NULL) {}
 * };
 */

class Solution {
public:
    ListNode *getIntersectionNode(ListNode *headA, ListNode *headB) {
        if (!headA || !headB) {
            return NULL;
        }
        ListNode *p1 = headA, *p2 = headB;
        while (p1 != p2) {
            p1 = (p1 ? p1->next : headB);
            p2 = (p2 ? p2->next : headA);
        }
        return p1;
    }
};

int main(int argc, const char * argv[]) {
    return 0;
}

/**剑指 Offer 52. 两个链表的第一个公共节点
 * See: https://leetcode.cn/problems/liang-ge-lian-biao-de-di-yi-ge-gong-gong-jie-dian-lcof/
 */
