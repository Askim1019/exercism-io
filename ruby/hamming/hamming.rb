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


# Shorter version with chained methods
=begin
class Hamming
  def self.compute(string1, string2)
    raise ArgumentError if string1.size != string2.size
  
    string1.chars.zip(string2.chars).count { |s1, s2| s1 != s2 }
  end
end

module BookKeeping
  VERSION = 3
end
=end

