class Hamming
  def self.compute(strand1, strand2)
    hamming_distance = 0
    
    if strand1 != strand2
      hamming_distance += 1
    end
    
    return hamming_distance
  end
  
  puts Hamming.compute("A","G") # should return 1
end