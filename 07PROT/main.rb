load 'rna_codon.rb'
s = File.open('data.txt').read

def parse_rna(raw_rna)
  raw_rna.gsub(/(.{3})(?=.)/, '\1 \2').split(' ')
end

def translating_rna(rna)
  table    = RNACodonTable.table
  rna      = parse_rna(rna)
  proteins = []

  rna.each do |code|
    proteins << table[code]
  end
  proteins.join
end

puts translating_rna(s)
