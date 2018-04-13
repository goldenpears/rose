s = File.open('data.txt').read
pattern = 'ATAT'

def dna_motif(dna, pattern)
  dna.scan(/#{pattern}/) do |m|
    puts Regexp.last_match.offset(0).first + 1} 
  end
end

dna_motif(s, pattern)

#Sample Output
#2 4 10
