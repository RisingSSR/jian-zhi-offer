//
//  main.swift
//  R30
//
//  Created by SSR on 2023/2/27.
//

import Foundation

class MinStack {

    var stack: [Int]
    var minStack: [Int]

    /** initialize your data structure here. */
    init() {
        stack = [Int]()
        minStack = [Int]()
    }
    
    func push(_ x: Int) {
        stack.append(x)
        if minStack.count == 0 || x < min() {
            minStack.append(x)
        } else {
            minStack.append(min())
        }
    }
    
    func pop() {
        stack.removeLast()
        minStack.removeLast()
    }
    
    func top() -> Int {
        return stack.last ?? -1
    }
    
    func min() -> Int {
        return minStack.last ?? -1
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(x)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.min()
 */

/**剑指 Offer 30. 包含min函数的栈
 * See: https://leetcode.cn/problems/bao-han-minhan-shu-de-zhan-lcof/
 * 有一个原本的stack是用于原数据的处理
 * minStack是保存较小值，原则是和stack的数据个数保持一致
 * 时刻保证minStack的顶部数据一定会是stack当前数据的最小值
 */
