class Pangram

  def self.pangram?(phrase)
    p modify_phrase = phrase.downcase.split("").sort.uniq.join("").strip.gsub(/[^a-z]/, '')
    
    if modify_phrase == ""
      false
    elsif modify_phrase == "abcdefghijklmnopqrstuvwxyz" or modify_phrase == nil
      true
    else
      false
    end
  end
  
end

module BookKeeping
  VERSION = 6
end


p Pangram.pangram?('"Five quacking Zephyrs jolt my wax bed."')