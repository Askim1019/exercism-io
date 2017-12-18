class Grains
  
  def self.square(square_count)
    raise ArgumentError if square_count <= 0 || square_count > 64
    grain_count = (2 ** square_count) / 2
    grain_count
  end
  
  def self.total
    total_grain_on_board = 0
    
    (1..64).each do |num|
      add_grain_count = (2**num) / 2
      total_grain_on_board += add_grain_count
    end
    
    total_grain_on_board
  end
end

module BookKeeping
  VERSION = 1
end

p Grains.square(3)
p Grains.total