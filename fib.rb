def fibonacci(n)
  # Write your code here
    return n if n <= 1
    return fibonacci(n-1) + fibonacci(n-2)
end

n = gets.to_i
print(fibonacci(n))
