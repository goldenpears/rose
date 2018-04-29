n = 5

def fact(n)
  (1..n).reduce(1, :*)
end

def permutations(n)
  x = [*1..n]
  x.permutation.each { |y| puts y.join(' ') }
end

p fact(n)
permutations(n)
