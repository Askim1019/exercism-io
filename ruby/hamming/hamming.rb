# This passes the first 4 tests.

=begin
class Hamming
  def self.compute(strand1, strand2)
    hamming_distance = 0
    
    if strand1 != strand2
      hamming_distance += 1
    end
    
    return hamming_distance
  end
  
  puts Hamming.compute("AG","CT") # should return 1
end
=end

class Hamming
  
  def self.compute(strand1, strand2)
    hamming_distance = 0
    
    strand_one_arr = strand1.to_a
    strand_two_arr = strand2.to_a
    strand_one_arr.zip(strand1,)
  end
  
end



#The call result should be this.
#hamming('GAGCCTACTAACGGGAT', 'CATCGTAATGACGGCCT') => 7