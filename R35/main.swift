//
//  main.swift
//  R35
//
//  Created by SSR on 2023/2/28.
//

import Foundation

class Node {
    
    public var val: Int
    public var next: Node?
    public var random: Node?

    public init(_ val: Int) {
        self.val = val
        self.next = nil
        self.random = nil
    }
}

extension Node: Hashable, Equatable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(val)
        hasher.combine(ObjectIdentifier(self))
    }
    public static func == (lhs: Node, rhs: Node) -> Bool {
        lhs === rhs
    }
}

class Solution {
    var hashMap = [Node:Node]()
    func copyRandomList(_ head: Node?) -> Node? {
        guard let head = head else {
            return nil
        }

        if hashMap[head] == nil {
            let node = Node.init(head.val)
            hashMap[head] = node
            node.next = copyRandomList(head.next)
            node.random = copyRandomList(head.random)
        }
        return hashMap[head]
    }
}
