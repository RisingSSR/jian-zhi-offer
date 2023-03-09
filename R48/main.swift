//
//  main.swift
//  R48
//
//  Created by SSR on 2023/3/8.
//

import Foundation

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.count == 0 { return 0 }    //排除空串
        let sAry = Array(s)  //转字符数组方便操作
        var dict = [Character : Int]()  //字符字典
        var max = 0, temp = 0, pre = 0  //最大值、比较值、游标
        for i in 0..<sAry.count {
            if let num = dict[ sAry[i] ] {    //重复了
                pre = pre > num ? pre : num + 1     //前指针移动到重复元素后一位
            }
            dict[ sAry[i] ] = i
            temp = i - pre + 1  //不用temp+=1是因为会混乱
            max = max > temp ? max : temp    //如果可以的话，更新最大值
        }
        return max
    }
}

/**剑指 Offer 48. 最长不含重复字符的子字符串
 * See: https://leetcode.cn/problems/zui-chang-bu-han-zhong-fu-zi-fu-de-zi-zi-fu-chuan-lcof/
 * 其实思路有点难理解，这里用字典去保存有的东西，判断有的，然后就可以发现最大的
 */
