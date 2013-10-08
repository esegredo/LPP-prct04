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

# Checks if the product can be done with a and b
def check_size_product(a, b)
  return false if (a[0].length != b.length)
  return true
end

# Performs the product
def product(a, b)
  if check_size_product(a, b)
    result = Array.new(a.length) { Array.new(b[0].length) }
    for i in 0...a.length
      for j in 0...b[0].length
        sum = 0
        for k in 0...a[0].length
          sum += a[i][k] * b[k][j]
        end
        result[i][j] = sum
      end
    end
    return result
  end
  return false
end

# Prints a matrix
def print_matrix(m)
  for i in 0...m.length
    for j in 0...m[0].length
      printf("%d ", m[i][j])
    end
    puts
  end
end

# Main program
a = [[2, 6], [12, 5], [27, -3]]
b = [[5, -7, 10], [34, 54, -2]]


print_matrix(a)
puts

print_matrix(b)
puts

r = sum(a, b)
if r
  print_matrix(r)
  puts
else
  puts "No se puede realizar la suma"
  puts
end

r2 = product(a, b)
if r2
  print_matrix(r2)
  puts
else
  puts "No se puede realizar el producto"
  puts
end
