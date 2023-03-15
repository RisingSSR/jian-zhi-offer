//
//  main.swift
//  R41
//
//  Created by SSR on 2023/3/15.
//

import Foundation

class MedianFinder {
    var minHeap: MyStackHeap
    var maxHeap: MyStackHeap
    var count = 0

    init() {
        minHeap = .init()
        maxHeap = .init(true)
    }

    func addNum(_ num: Int) {
        if count % 2 == 0 {
            minHeap.add(num)
            maxHeap.add(minHeap.poll())
        } else {
            maxHeap.add(num)
            minHeap.add(maxHeap.poll())
        }
        count += 1
    }

    func findMedian() -> Double {
        if count & 1 == 1 {
            let k = Double(maxHeap.peak())
            return Double(maxHeap.peak())
        } else {
            let k = (Double(maxHeap.peak()) + Double(minHeap.peak())) * 0.5
            return (Double(maxHeap.peak()) + Double(minHeap.peak())) * 0.5
        }
    }
}

class MyStackHeap {
    //！ 标记大顶堆 还是 小顶堆, 默认是小顶堆
    var isMaxFlag = false
    var heap: [Int]!
    //!  有效元素个数，也是堆最后一个元素的角标
    var count = 0

    init(_ flag:Bool = false) {
        self.isMaxFlag = flag
        // 堆元素从 角标 1 开始
        heap = [0]
    }

    func add(_ val:Int) {
        insert(val)
    }

    func poll() -> Int {
        let num = heap[1]
        heap.swapAt(1, count)
        heap.remove(at: count)
        count -= 1
        heapify()
        return num
    }

    func peak() -> Int {
        return heap[1]
    }

    private func insert(_ key: Int) {
        count += 1
        heap.append(key)
        var j = count
        while j / 2 > 0 && comparator(heap[j], heap[j/2]) {
            heap.swapAt(j, j / 2)
            j = j / 2
        }
    }

    func comparator(_ num1: Int, _ num2: Int) -> Bool {
        if isMaxFlag {
            return num2 < num1
        } else {
            return num1 < num2
        }
    }

    private func heapify() {
        var index = 1
        while true {
            var postionIndex = index
            if index * 2 <= count && !comparator(heap[index], heap[index * 2]) {
                postionIndex = index * 2
            }
            if index * 2 + 1 <= count && !comparator(heap[postionIndex], heap[index * 2 + 1]) {
                postionIndex = index * 2 + 1
            }
            if postionIndex == index {
                break
            }
            heap.swapAt(index, postionIndex)
            index = postionIndex
        }
    }
}

/**
 * Your MedianFinder object will be instantiated and called as such:
 * let obj = MedianFinder()
 * obj.addNum(num)
 * let ret_2: Double = obj.findMedian()
 */

/**剑指 Offer 41. 数据流中的中位数
 * See: https://leetcode.cn/study-plan/lcof/?progress=f22rlgj
 * 小根堆真的太难了，用正常排序的话，直接复杂度拉满，太难了。
 */
