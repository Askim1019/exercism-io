class Squares
  attr_reader :number
  
  def initialize(number)
    @number = number
  end
  
  def square_of_sum
    sum = ((number + 1) * number) / 2
    sum**2
  end
  
  def sum_of_squares
    1.upto(number).reduce(0) do |sum, number|
      sum + number**2
    end
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

puts Squares.new(5).square_of_sum
puts Squares.new(5).sum_of_squares
puts Squares.new(5).difference

module BookKeeping
  VERSION = 4
end