File.open("data.txt", "r") do |f|
  f.each_line do |line|
    puts line
    A = line.scan(/A/).count
    C = line.scan(/C/).count
    G = line.scan(/G/).count
    T = line.scan(/T/).count
  end
end

puts A, C, G, T