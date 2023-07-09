import UIKit

//func sortStack(stack: inout [Int]) {
//    var tempStack = [Int]()
////    debugPrint("TempStack:",  tempStack)
////    debugPrint("InputStack: ",stack.isEmpty,"  ",!stack.isEmpty)
//
//    while !stack.isEmpty {
////        debugPrint("InputStackInsideWhileLoop: ",stack.isEmpty,"  ",!stack.isEmpty)
//        let current = stack.removeLast()
////        debugPrint("Current",   current)
//
////        debugPrint("TempStackCondition: ",tempStack.isEmpty,"  ",!tempStack.isEmpty)
////        debugPrint(tempStack.last ?? -1 > current)
//
//        while !tempStack.isEmpty && tempStack.last! > current {
////            debugPrint("kunal:  ",stack)
//            stack.append(tempStack.removeLast())
////            debugPrint("chhabra:    ",stack)
//        }
//
//        tempStack.append(current)
////        debugPrint("Print TepStack At LineNo. 22",tempStack)
////        debugPrint("Input Stack Elements:", stack)
//    }
//
//    stack = tempStack.reversed()
//}
//
//// Example usage:
//var stack = [34, 3, 31, 98, 92, 23]
//sortStack(stack: &stack)
//print(stack) // Output: [3, 23, 31, 34, 92, 98]




class TreeNode {
    var value: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(_ value: Int) {
        self.value = value
        self.left = nil
        self.right = nil
    }
}

func preorderTraversal(_ root: TreeNode?) {
    guard let root = root else {
        return
    }
    
    print(root.value) // Process the current node (root)
    
    preorderTraversal(root.left) // Recursively traverse the left subtree
    
    preorderTraversal(root.right) // Recursively traverse the right subtree
    
}

// Create the binary tree
let root = TreeNode(1)
root.left = TreeNode(2)
root.right = TreeNode(3)
root.left?.left = TreeNode(4)
root.left?.right = TreeNode(5)

// Perform pre-order traversal
preorderTraversal(root)
