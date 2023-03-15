//
//  main.swift
//  R40
//
//  Created by SSR on 2023/3/15.
//

import Foundation

class Solution {
    func getLeastNumbers(_ arr: [Int], _ k: Int) -> [Int] {
        if arr.isEmpty || k == 0 {
            return []
        }
        var arr = arr
        sort(quick: &arr, k)
        return Array( arr[0..<k] )
    }
    
    func sort(quick ary: inout [Int], low: Int = 0, hight: Int? = nil, _ idx: Int) {
        func partition(low: Int, high: Int) -> Int {
            let t = ary[low]
            var l = low, h = high
            while l < h {
                while l < h, ary[h] >= t {
                    h -= 1
                }
                ary[l] = ary[h]
                while l < h, ary[l] <= t {
                    l += 1
                }
                ary[h] = ary[l]
            }
            ary[l] = t
            return l
        }
        
        let hight = hight ?? ary.count - 1
        let res = partition(low: low, high: hight)
        if res == idx - 1 {
            return
        } else if res > idx - 1 {
            sort(quick: &ary, low: low, hight: res - 1, idx)
        } else {
            sort(quick: &ary, low: res + 1, hight: hight, idx)
        }
    }

}

print(Solution().getLeastNumbers([0,1,2,1], 2))

/**剑指 Offer 40. 最小的k个数
 * See: https://leetcode.cn/problems/zui-xiao-de-kge-shu-lcof/
 * 利用快排去排序，学习一下快排
 */
