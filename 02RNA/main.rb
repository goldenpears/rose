s = File.open("data.txt", "rb").read
s.gsub!(/[T]/, 'U')

puts s