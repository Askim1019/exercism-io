class Bob
  def self.hey(statement)
    if silence?(statement)
      "Fine. Be that way!"
    elsif yelling?(statement)
      "Whoa, chill out!"
    elsif question?(statement)
      "Sure."
    else
      "Whatever."
    end
  end

  def self.silence?(statement)
    statement.strip.empty?
  end

  def self.yelling?(statement)
    statement.upcase == statement && statement.downcase != statement
  end

  def self.question?(statement)
    statement.strip.end_with?("?")
  end
end

module BookKeeping
  VERSION = 1
end


p Bob.hey("Does this cryogenic chamber make me look fat?")