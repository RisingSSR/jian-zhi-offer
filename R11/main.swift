//
//  main.swift
//  R11
//
//  Created by SSR on 2023/3/3.
//

import Foundation

class Solution {
    func minArray(_ numbers: [Int]) -> Int {
        var lead = 0, trail = numbers.count - 1
        while lead < trail {
            let mid = (lead + trail) / 2
            if numbers[mid] < numbers[trail] {
                trail = mid
            } else if numbers[mid] > numbers[trail] {
                lead = mid + 1
            } else {
                trail -= 1
            }
        }
        return numbers[lead]
    }
}

/**剑指 Offer 11. 旋转数组的最小数字
 * See: https://leetcode.cn/problems/xuan-zhuan-shu-zu-de-zui-xiao-shu-zi-lcof/
 * 二分法，其实就当一个完好的升序做就好了
 */

let numbers = [3,4,5,1,2]
print(Solution().minArray(numbers))
