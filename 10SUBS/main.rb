s = File.open('data.txt').read
pattern = 'CGGCCCCCG'

def dna_motif(dna, pattern)
  dna.scan(/(?=(#{pattern}))/) do |m|
    print "#{Regexp.last_match.offset(0).first + 1} "
  end
end

dna_motif(s, pattern)
