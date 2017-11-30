class Gigasecond
  
  def self.from(birthday)
    
    gigasec = 1_000_000_000
    
    #convert birthday into seconds only
    birthday_conversion = birthday.strftime('%s').to_i
    
    gigasecond_date_in_seconds = birthday_conversion + gigasec
    
    gigasecond_conversion_to_utc = Time.at(gigasecond_date_in_seconds)
    
    gigasecond_conversion_to_utc
  end
  

end

module BookKeeping
  VERSION = 6 # Where the version number matches the one in the test.
end