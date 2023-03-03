//
//  main.swift
//  R50
//
//  Created by SSR on 2023/3/3.
//

import Foundation

class Solution {
    func firstUniqChar(_ s: String) -> Character {
        var map = [Character : Int]()
        for c in s {
            if map[c] != nil {
                map[c]! += 1
            } else {
                map[c] = 1
            }
        }
        for c in s {
            if map[c] == 1 {
                return c
            }
        }
        return " "
    }
}

let s = "leetcode"
print(Solution().firstUniqChar(s))

/**剑指 Offer 50. 第一个只出现一次的字符
 * See: https://leetcode.cn/problems/di-yi-ge-zhi-chu-xian-yi-ci-de-zi-fu-lcof/
 * 利用字典先遍历一遍，再一个个去找就好了。
 */
