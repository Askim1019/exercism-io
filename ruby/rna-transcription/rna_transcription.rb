#G to C
#C to G
#T to A
#A to U
class Complement
  
  def self.of_dna(nucleotide)
    list_of_nucleotides = nucleotide.split('') # make string into array
    

    transcribed_list = [] # assign ruby 
    list_of_nucleotides.each do |char| # Iterate over array or each letter
      case char # conditional case statement that transcribes the nucleotide letter
      when "G"
        transcribed_list << "C"
      when "C"
        transcribed_list << "G"
      when "T"
        transcribed_list << "A"
      when "A"
        transcribed_list << "U"
      else
        transcribed_list = ['']
        break
      end
    end
    
    transcribed_list.join # join the array elements to make one string
    
  end
  
end

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end

Complement.of_dna('ACGTXXXCTTAA')

