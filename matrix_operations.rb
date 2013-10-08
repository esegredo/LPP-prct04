#!/usr/bin/ruby

# Main program
a = [[2, 6], [12, 5], [27, -3]]
b = [[5, -7, 10], [34, 54, -2]]

# Checks if the product can be done with a and b
def check_size_product(a, b)
  return false if (a[0].length != b.length)
  return true
end

