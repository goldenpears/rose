s = File.open('data.txt').read
s = s.split

# newborns - pair of newborn rabbits
# 1 pair produce 1 pair  of newborns => 6 months - 8 pairs  of newborns
# 1 pair produce 3 pairs of newborns => 5 months - 19 pairs of newborns

def rabbit_count(months, newborns)
  return months if months <= 1
  rabbit_count(months - 1, newborns) + newborns * rabbit_count(months - 2, newborns)
end

# expected data: '5 3'
puts rabbit_count(s[0].to_i, s[1].to_i)
