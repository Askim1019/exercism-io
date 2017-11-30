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

=begin 
class Hamming
  
  def self.compute(strand1, strand2)
    hamming_distance = 0
    
    strand_one_arr = strand1.to_a
    strand_two_arr = strand2.to_a
    strand_one_arr.zip(strand1,)
  end
  
end
=end

class Hamming
  
  def self.compute(strand1, strand2)
    
     # => array ["G", "A", "C" ...]
    str1 = strand1.upcase.split('')
    str2 = strand2.upcase.split('')
    
    # => Set the distance to 0
    hamming_distance = 0 
    
    # iterate over each index value and compare it to index value for 
    # second array
    if strand1.length == strand2.length
      str1.each_index do |index|
        if str1.values_at(index) != str2.values_at(index)
          hamming_distance += 1
        end
      end
    else
      raise ArgumentError
    end
    
    #return the hamming_distance (this is what the method calls for)
    hamming_distance
  end

end

