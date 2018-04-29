n = 94
k = 8

def fact(n)
  (1..n).reduce(1, :*)
end

def partial_permutations(n, k)
  ( fact(n)/fact(n-k) ) % 100000
end

p partial_permutations(n, k)