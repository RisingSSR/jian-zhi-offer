//
//  main.swift
//  R07
//
//  Created by SSR on 2023/3/18.
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

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        if preorder.count == 0 {
            return nil
        }
        let root = TreeNode(preorder[0])
        var stk = [TreeNode]()
        stk.append(root)
        var idx = 0
        for num in preorder {
            var node = stk.last!
            if node.val != inorder[idx] {
                node.left = TreeNode(num)
                stk.append(node.left!)
            } else {
                while !stk.isEmpty && stk.last!.val == inorder[idx] {
                    node = stk.last!
                    let _ = stk.popLast()
                    idx += 1
                }
                node.right = TreeNode(num)
                stk.append(node.right!)
            }
        }
        return root
    }
}

/*
class Solution {
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        if preorder.count == 0 {
            return nil
        }
        if preorder.count == 1 {
            return TreeNode.init(preorder[0])
        }
        
        let rootValue = preorder[0]
        
        var preorderLeft = [Int]()
        var preorderRight = [Int]()
        var inorderLeft = [Int]()
        var inorderRight = [Int]()
        
        var flag = -1;
        for num in inorder {
            if(num == rootValue){
                flag = 1
                continue
            }
            
            if flag == -1 {
                inorderLeft.append(num)
            } else {
                inorderRight.append(num)
            }
        }
        
        let leftTreeCount = inorderLeft.count
        var leftSum = 0
        for (index, num) in preorder.enumerated() {
            if(index == 0){
                continue
            }
            if(leftSum < leftTreeCount){
                preorderLeft.append(num)
                leftSum += 1
            } else{
                preorderRight.append(num)
            }
        }
        
        let rootNode = TreeNode.init(rootValue)
        let leftNode = buildTree(preorderLeft, inorderLeft)
        let rightNode = buildTree(preorderRight, inorderRight)
        rootNode.left = leftNode
        rootNode.right = rightNode
        return rootNode
    }
}
 */

/*
 class Solution {
   var indexMap = [Int:Int]()
   func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
     // 构造哈希映射，帮助我们后续可以快速定位根节点
     for i in 0..<preorder.count {
       indexMap[inorder[i]] = i
     }
     return myBuildTree(preorder,inorder,0)
   }
   
   
   func myBuildTree(_ preorder: [Int], _ inorder: [Int], _ offsetIndex:Int) -> TreeNode? {
     if preorder.count <= 0 {
        return nil
     }
      
     //! 前序遍历的首元素自然是根节点
     let root = TreeNode.init(preorder[0])
         
     // 先定位到原始 中序遍历的位置
     let inorder_root = indexMap[preorder[0]]!
     
     //! 通过偏移量得到当前的位置
     let middleNodeIndex = inorder_root + offsetIndex
   
     //! 将中序遍历的数组分割，左右两边分别是 root 的左右子树 A 和 B 的中序遍历数组
     let leftNodeInorder = Array(inorder[..<middleNodeIndex])
     let rightNodeInorder = Array(inorder[middleNodeIndex+1..<inorder.endIndex])
         
     //! 1. 将前序遍历的数组进行分割，很明显，我们可以通过得到 A 和 B 的数组长度，
     //! 2. 对前序数组进行分割，分别拿到 A B 子树的前序数组
     let leftNodePreorder = Array(preorder[1..<leftNodeInorder.count+1])
     let rightNodePreorder = Array(preorder[leftNodePreorder.count+1..<preorder.endIndex])
     //! 左部分的偏移量 是不需要改变的，所以为 offsetIndex
     root.left = myBuildTree(leftNodePreorder,leftNodeInorder,offsetIndex)
     //! 右部分的偏移量，我们需要去掉 左半部分，所以应该是 offsetIndex-左半部分的长度（也就是middleNodeIndex+1）
     root.right = myBuildTree(rightNodePreorder,rightNodeInorder,offsetIndex-middleNodeIndex-1)
     return root
   }
 }
 */

/**剑指 Offer 07. 重建二叉树
 * See: https://leetcode.cn/problems/zhong-jian-er-cha-shu-lcof/?envType=study-plan&id=lcof&plan=lcof&plan_progress=f22rlgj
 * 递归建立左子树 https://leetcode.cn/problems/zhong-jian-er-cha-shu-lcof/solution/mian-shi-ti-07-zhong-jian-er-cha-shu-by-leetcode-s/
 */
