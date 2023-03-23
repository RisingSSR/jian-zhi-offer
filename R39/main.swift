//
//  main.swift
//  R39
//
//  Created by SSR on 2023/3/23.
//

import Foundation

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var counts = [Int: Int]()
        var majority = 0, cnt = 0
        for num in nums {
            counts[num] = (counts[num] ?? 0) + 1
            if counts[num]! > cnt {
                majority = num
                cnt = counts[num]!
            }
        }
        return majority
    }
}

print(Solution().majorityElement([1, 2, 3, 2, 2, 2, 5, 4, 2]))
