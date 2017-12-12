class Prime
  
  def self.nth(number)
    
    if number == 0
      raise ArgumentError
    end
    
    list_of_primes = []
    total = 0
    
    while list_of_primes.length < number
      if self.factor_total(total) === 2
        list_of_primes.push(total)
        total += 1
      else
        total += 1
        next
      end
      
      list_of_primes
    end
    
    list_of_primes.last
  end
  
  def self.factor_total(x)
    factors = 0
    counter = 1
    
    while counter <= x
      if x % counter == 0
        factors += 1
      else
        factors += 0
      end
      
      counter += 1
      
    end
    
    factors
  end
  
end

module BookKeeping
  VERSION = 1
end