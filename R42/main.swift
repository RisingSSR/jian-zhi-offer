//
//  main.swift
//  R42
//
//  Created by SSR on 2023/3/7.
//

import Foundation

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        if nums.isEmpty { return 0 }
        var pre = 0
        var res = nums[0]
        for n in nums {
            pre = max(pre + n, n)
            res = max(res, pre)
        }
        return res
    }
}

print(Solution().maxSubArray([1,2]))

/**剑指 Offer 42. 连续子数组的最大和
 * See: https://leetcode.cn/problems/lian-xu-zi-shu-zu-de-zui-da-he-lcof/
 * 其实有点像最短路径算法了，dp的时候，是不用去管实际数所在地方的，只需要去打一次dp就可以了
 */
