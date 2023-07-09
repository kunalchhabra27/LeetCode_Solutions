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

func hasPathSum(_ root: TreeNode?, sum: Int) -> Bool {
    
    guard let node = root else {
        return false
    }
    
    if node.left == nil && node.right == nil && node.value == sum {
        return true
    }
    
    let remainingSum = sum - node.value
    return hasPathSum(node.left, sum: remainingSum) || hasPathSum(node.right, sum: remainingSum)
}

//Create a Binary tree
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

print(hasPathSum(root, sum: 25))
