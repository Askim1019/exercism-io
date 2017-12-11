class Fixnum
  
  def to_roman
    numeral_map = {
      1000 => "M",
      900 =>  "CM",
      500 =>  "D",
      400 =>  "CD",
      100 =>  "C",
      90 =>   "XC",
      50 =>   "L",
      40 =>   "XL",
      10 =>   "X",
      9 =>    "IX",
      5 =>    "V",
      4 =>    "IV",
      1 =>    "I",
    }
    
   numeral = ""
   number = self
    
    
    numeral_map.keys.each do |key|
      while number >= key
        numeral += numeral_map[key]
        number -= key
      end
    end
    
    numeral
  end
  
end


module BookKeeping
  VERSION = 2
end

p 3000.to_roman

  