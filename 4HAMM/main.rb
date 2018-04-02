s = File.readlines('data.txt')

def string_diff(a, b)
  result = 0
  if a.eql? b
    return 0
  else
    a.each_char.with_index do |c, i|
      result += 1  if c != b[i]
    end 
  end
  return result-1 
end

puts string_diff(s[0], s[1])
