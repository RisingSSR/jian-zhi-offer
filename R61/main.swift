//
//  main.swift
//  R61
//
//  Created by SSR on 2023/3/1.
//

import Foundation

class Solution {
    func isStraight(_ nums: [Int]) -> Bool {
        var set = Set<Int>()
        var kmin = 0, kmax = 14
        for num in nums {
            if num == 0 {
                continue
            }
            if set.contains(num) {
                return false
            }
            kmax = max(kmax, num)
            kmin = min(kmin, num)
            set.insert(num)
        }
        return kmax - kmin < 5
    }
}

let s = Solution()
let a = s.isStraight([0,0,2,2,5])
print(a)
