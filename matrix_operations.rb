#!/usr/bin/ruby

# Checks if the sum can be done with a and b
def check_size_sum(a, b)
  return false if ((a.length != b.length) || (a[0].length != b[0].length))
  return true
end

# Main program
a = [[2, 6], [12, 5], [27, -3]]
b = [[5, -7, 10], [34, 54, -2]]
