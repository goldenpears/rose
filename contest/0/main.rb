def find_pattern_index(string, pattern)
res = []
  string.scan(/#{pattern}/) do |c|
    res << [Regexp.last_match.offset(0).first + 1]
  end
  puts "#{res.join(' ')} \n"
end

find_pattern_index(aa, bb)



