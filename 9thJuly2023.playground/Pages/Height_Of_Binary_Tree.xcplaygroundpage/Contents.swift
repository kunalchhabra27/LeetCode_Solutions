import Foundation

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

func height(_ root: TreeNode?) -> Int {
    
//    guard let node = root else {
//        return 0
//    }
//
//    let leftSubTreeHeight = height(node.left)
//    let rightSubTreeHeight = height(node.right)
//
//    return 1 + max(leftSubTreeHeight, rightSubTreeHeight)
    
    var leftHeight = 0
    var rightHeight = 0
    
    if root?.left != nil {
        leftHeight = height(root?.left)
    }
    
    if root?.right != nil {
        rightHeight = height(root?.right)
    }
    
    return 1 + max(leftHeight, rightHeight)
}

//Create a Binary Tree
let root = TreeNode(1)
root.left = TreeNode(2)
root.right = TreeNode(3)
root.left?.left = TreeNode(4)
root.right?.right = TreeNode(5)
root.left?.left?.left = TreeNode(6)
root.right?.right?.right = TreeNode(7)
root.left?.right = TreeNode(9)
root.right?.left = TreeNode(8)
root.left?.left?.right = TreeNode(10)
root.left?.right?.right = TreeNode(11)
root.left?.right?.right?.right = TreeNode(12)

print(height(root))
