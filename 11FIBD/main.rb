x, y = 6, 3
output = 4

# Attempts which doesn't work

# def mortal_rabbit(period, death)
#   return 0 if period == 0
#   return 1 if period == 1
#   mortal_rabbit(period - 1, death) +  mortal_rabbit(period - 2, death) - (mortal_rabbit(period - 1, death) / death)
# end

# def f(n, d)
#   a, b = 0, 1
#   n.times do  
#     a, b = b, b+a - b/(d)
#   end  
#   a
# end

# def f(n, d)
#   x = [1, 1]
#   (2..n).each do
#     x << (x[-1] + x[-2] - (x.index(x.last))/d)
#   end
#   x
# end

def f(n, m)
  # hint: dynamic programming
end

puts f(x, y)
puts f(x, y).last == output
