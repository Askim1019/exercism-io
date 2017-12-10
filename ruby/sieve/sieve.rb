require 'prime'

class Sieve
  attr_reader :limit
  
  def initialize(limit)
    @limit = limit
  end
  
  def primes
    expected = []
    
    if limit < 2
      return expected
    end
    
    1.upto(limit).each do |x|
      if Prime.prime?(x)
        expected.push(x)
      else
        next
      end
    end
    
    expected
  end
  
end

module BookKeeping
  VERSION = 1
end
