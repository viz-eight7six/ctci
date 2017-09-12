def lowest_sum(node)
  return node.value unless node.left

  left = lowest_sum(node.left)
  right = lowest_sum(node.right)

  return left + node.value if left < right

  right + node.value

end
