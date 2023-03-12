//
//  main.swift
//  R12
//
//  Created by SSR on 2023/3/12.
//

import Foundation

class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        let word = Array(word)
        let h = board.count, w = board[0].count
        let directions = [(0, 1), (0, -1), (1, 0), (-1, 0)]
        var visited = Array(repeating: Array(repeating: false, count: w), count: h)
        
        func check(i: Int, j: Int, idx: Int) -> Bool {
            if board[i][j] != word[idx] {
                return false
            }
            if idx == word.count - 1 {
                return true
            }
            visited[i][j] = true
            var result = false
            
            for (dx, dy) in directions {
                let newi = i + dx, newj = j + dy
                if newi >= 0 && newi < h, newj >= 0 && newj < w {
                    if !visited[newi][newj] {
                        if check(i: newi, j: newj, idx: idx + 1) {
                            result = true
                            break
                        }
                    }
                }
            }
            visited[i][j] = false
            return result
        }
        
        for i in 0..<h {
            for j in 0..<w {
                if check(i: i, j: j, idx: 0) {
                    return true
                }
            }
        }
        return false
    }
}

print(Solution().exist([["C","A","A"],["A","A","A"],["B","C","D"]], "AAB"))

/**剑指 Offer 12. 矩阵中的路径
 * See: https://leetcode.cn/problems/ju-zhen-zhong-de-lu-jing-lcof/
 * dfs深度搜索，4个方向依次递归
 */
