//
//  main.swift
//  R68-II
//
//  Created by SSR on 2023/3/17.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {

      if root == nil || root === p || root === q {
        return root
      }

      let leftNode = lowestCommonAncestor(root?.left, p, q)
      let rightNode = lowestCommonAncestor(root?.right, p, q)
    
      if leftNode != nil && rightNode != nil {
        return root
      }
      return (leftNode != nil) ? leftNode : rightNode
    }
}
