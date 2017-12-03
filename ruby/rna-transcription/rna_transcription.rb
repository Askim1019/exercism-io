#G to C
#C to G
#T to A
#A to U
class Complement
  
  def self.of_dna(nucleotide)
    case nucleotide
    when "G"
      return "C"
    when "C"
      return "G"
    when "T"
      return A
    when "A"
      return "U"
    end
  end
  
end