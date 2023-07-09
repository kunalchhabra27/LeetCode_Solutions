import Foundation

class TreeNode {
    
    var value: Int
    var leftChild: TreeNode?
    var rightChild: TreeNode?
    
    init(_ value: Int) {
        self.value = value
        self.leftChild = nil
        self.rightChild = nil
    }
}

func sumBT(_ root: TreeNode?) -> Int {
    
    guard let root = root else {
        return 0
    }
    
//    var leftSum = sumBT(root.leftChild)
//    var rightSum = sumBT(root.rightChild)
    
//    return root.value + leftSum + rightSum
    return root.value + ((root.leftChild != nil) ? sumBT(root.leftChild) : 0) + ((root.rightChild != nil) ? sumBT(root.rightChild) : 0)
}

//Create a Binary Tree
let root = TreeNode(1)
root.leftChild = TreeNode(2)
root.rightChild = TreeNode(3)
root.leftChild?.leftChild = TreeNode(4)
root.rightChild?.rightChild = TreeNode(5)
root.leftChild?.leftChild?.leftChild = TreeNode(6)
root.rightChild?.rightChild?.rightChild = TreeNode(7)

print(sumBT(root))
