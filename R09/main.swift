//
//  main.swift
//  R09
//
//  Created by SSR on 2023/2/27.
//

import Foundation

class CQueue {
    var stack1: [Int]
    var stack2: [Int]

    init() {
        stack1 = [Int]()
        stack2 = [Int]()
    }
    
    func appendTail(_ value: Int) {
        if !stack2.isEmpty {
            while let value = stack2.popLast() {
                stack1.append(value)
            }
        }
        stack1.append(value)
    }
    
    func deleteHead() -> Int {
        if stack2.isEmpty {
            while let value = stack1.popLast() {
                stack2.append(value)
            }
        }
        return stack2.popLast() ?? -1
    }
}

/**
 * Your CQueue object will be instantiated and called as such:
 * let obj = CQueue()
 * obj.appendTail(value)
 * let ret_2: Int = obj.deleteHead()
 */

/**剑指 Offer 09. 用两个栈实现队列
 * See: https://leetcode.cn/problems/yong-liang-ge-zhan-shi-xian-dui-lie-lcof/?envType=study-plan&id=lcof&plan=lcof&plan_progress=f22rlgj
 * 如果是新增，则要把2的所有东西换到1去，再添加新数据
 * 如果是删除，则要把1的所有东西移到2去，再取顶部数据
 */
