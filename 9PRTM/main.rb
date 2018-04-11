load 'monoisotopic_mass.rb'
s = File.open('data.txt').read

def calc_protein_mass(protein)
  table = MonoisotopicMass.table
  mass = 0
  protein.each_char do |aa|
    mass = mass + table[aa]
  end
  puts mass
end

calc_protein_mass(s)
