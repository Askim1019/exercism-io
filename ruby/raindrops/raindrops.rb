class Raindrops
    
  def self.convert(number)
    if number % 3 == 0 && number % 5 == 0 && number % 7 == 0
      p "PlingPlangPlong"
    elsif number % 3 == 0 && number % 5 == 0 && number % 7 != 0
      p "PlingPlang"
    elsif number % 5 == 0 && number % 7 == 0 && number % 3 != 0
      p "PlangPlong"
    elsif number % 3 == 0 && number % 5 != 0 && number % 7 == 0
      p "PlingPlong"
    elsif number % 3 == 0
      p "Pling"
    elsif number % 5 == 0
      p "Plang"
    elsif number % 7 == 0
      p "Plong"
    else
      number_to_string = number.to_s
      p number_to_string
    end
  end

end

module BookKeeping
  VERSION = 3
end

Raindrops.convert(15)