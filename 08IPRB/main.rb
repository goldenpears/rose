s = File.open('data.txt').read
s = s.split.each.map(&:to_f)

def mendels_first_law(k, m, n)
  t  = k + m + n
  x1 = (m/t) * (n/(t-1))             # m+n pair Aa x aa -> 50%?
  x2 = (m/t) * ((m-1)/(t-1)) * 0.25  # m+m pair Aa x aa -> 25%
  x3 = (n/t) * ((n-1)/(t-1))         # n+n pair aa x aa -> 100%
  1 - x1 - x2 - x3                   # remove all aa alleles
end

puts mendels_first_law(s[0], s[1], s[2])
