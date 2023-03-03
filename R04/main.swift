//
//  main.swift
//  R04
//
//  Created by SSR on 2023/3/3.
//

import Foundation

class Solution {
    func findNumberIn2DArray(_ matrix: [[Int]], _ target: Int) -> Bool {
        var row = matrix.count - 1 ,col = 0
        while row >= 0 && col <= matrix[0].count - 1 {
            if matrix[row][col] > target {
                row -= 1
            } else if matrix[row][col] < target{
                col += 1
            } else {
                return true
            }
        }
        return false
    }
}

var matrix: [[Int]] = [
    [1,   4,  7, 11, 15],
    [2,   5,  8, 12, 19],
    [3,   6,  9, 16, 22],
    [10, 13, 14, 17, 24],
    [18, 21, 23, 26, 30]
]

/**剑指 Offer 04. 二维数组中的查找
 * See: https://leetcode.cn/problems/er-wei-shu-zu-zhong-de-cha-zhao-lcof/
 * 从左下角开始判断，因为是非递减，所以会直接先把问题缩小到前k行
 * 然后再从左往右去排除列，排除一列过后，还是会有可能继续缩小到某几行
 */
