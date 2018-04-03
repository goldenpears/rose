s = File.open('data.txt').read

# '>ID_0000 \n ATGC' to {ID_0000 => 'ATCG',}
def parse_dataset(raw_dataset)
  result  = []
  dataset = raw_dataset.split('>').reject(&:empty?)
  dataset.each do |x|
    x = x.strip.split(" ", 2)
    result << x
  end
  result.to_h
end

# return percentage of CG
def computing_cg(id, value)
  cg     = value.count('C') + value.count('G')
  value  = value.gsub(/\n/, "")
  cg_percentage = cg.to_f / (value.size.to_f) * 100
  puts id, cg_percentage
end

# container
def identify_dna(dataset)
  dataset = parse_dataset(dataset)
  dataset.each { |k, v| computing_cg(k, v) }
end

identify_dna(s)
