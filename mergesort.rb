def mergesort(array)
  if array.count <= 1
    return array
  end

  mid = array.count/2
  left = mergesort(array.slice(0, mid))
  right = mergesort(array.slice(mid, array.count - mid))

  merge(left, right)

end

def merge(left, right)
  if left.empty?
    return right
  elsif right.empty?
    return left
  end
