//
//  main.swift
//  R10-I
//
//  Created by SSR on 2023/3/6.
//

import Foundation

class Solution {
    func fib(_ n: Int) -> Int {
        if n == 0 { return 0 }
        var dp = [Int](repeating: 0, count: n + 1)
        dp[1] = 1;
        if n >= 2 {
            for i in 2...n {
                dp[i] = (dp[i - 1] + dp[i - 2]) % 1000000007
            }
        }
        return dp[n]
    }
}

print(Solution().fib(5))
