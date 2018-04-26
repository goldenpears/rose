s = File.open("data.txt", "rb").read
s.reverse!
s.gsub!(/[TACG]/, 'T' => 'A', 'A' => 'T', 'C' => 'G', 'G' => 'C')
puts s

# A-T
# C-G