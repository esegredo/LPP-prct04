#!/usr/bin/ruby

# Checks if the sum can be done with a and b
def check_size_sum(a, b)
  return false if ((a.length != b.length) || (a[0].length != b[0].length))
  return true
end

# Performs the sum
def sum(a, b)
  if check_size_sum(a, b)
    result = Array.new(a.length) { Array.new(a[0].length) }
    for i in 0...a.length
      for j in 0...a[0].length
        result[i][j] = a[i][j] + b[i][j]
      end
    end
    return result
  end
  return false
end

# Main program
a = [[2, 6], [12, 5], [27, -3]]
b = [[5, -7, 10], [34, 54, -2]]
