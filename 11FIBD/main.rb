# Fn = Fn-1 + Fn-2 - Fn-(m+1)

n, m   = 84, 18

def f(n, m)
  x = [1, 1]
  (2..n-1).each do |i|
    if i < m
      x << (x[-1] + x[-2])
    elsif i == m
      x << (x[-1] + x[-2] - 1)
    else
      x << (x[-1] + x[-2] - ( x[-(m+1)] ))
    end  
  end
  x.last
end

puts f(n, m)

# Attempts which don't work
# and left for a historical purpose

# Fn = Fn-1 + Fn-2 - Fn/m

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
