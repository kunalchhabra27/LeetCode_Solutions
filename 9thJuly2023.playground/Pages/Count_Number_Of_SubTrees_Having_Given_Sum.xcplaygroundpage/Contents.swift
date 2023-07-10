import Foundation

class TreeNode {
    
    var value: Int
    var left : TreeNode?
    var right: TreeNode?
    
    init(_ value: Int) {
        self.value = value
        self.left = nil
        self.right = nil
    }
}

//func helper(_ root: TreeNode?, x: Int, count: inout Int) -> Int {
//    var sum = 0
//    var lsum = 0
//    var rsum = 0
//
//    if(root?.left != nil) {
//        lsum = helper(root?.left, x: x, count: &count)
//    }
//
//    if(root?.right != nil) {
//        rsum = helper(root?.right, x: x, count: &count)
//    }
//
//    sum = lsum + rsum + (root?.value ?? 0)
//    if(sum == x) {
//        count = count + 1
//    }
//    return sum
//}

//func countSubTreesWithSumX(_ root: TreeNode?, x: Int) -> Int {
//    var count = 0
//    helper(root, x: x, count: &count)
//    return count
//}

func countSubtreesWithSumX(root: TreeNode?, targetSum: Int) -> Int {
    // Base case: an empty tree has no subtrees with sum X
    guard let root = root else {
        return 0
    }
    
    var count = 0
    
    // Recursive call on the left and right subtrees
    let leftCount = countSubtreesWithSumX(root: root.left, targetSum: targetSum)
    let rightCount = countSubtreesWithSumX(root: root.right, targetSum: targetSum)
    
    // Check if the current subtree has sum X
    let subtreeSum = root.value + leftCount + rightCount
    if subtreeSum == targetSum {
        count += 1
    }
    
    // Return the total count of subtrees with sum X
    return count + leftCount + rightCount
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

//print(countSubTreesWithSumX(root, x: 16))

let targetSum = 12

// Count the number of subtrees with sum X
let result = countSubtreesWithSumX(root: root, targetSum: targetSum)
print("Number of subtrees with sum \(targetSum): \(result)")
