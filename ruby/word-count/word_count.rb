class Phrase

  def initialize(sentence)
    @sentence = sentence
  end
    
  def word_count
    
    split_sentence = @sentence.downcase.scan(/[\w+']*[^\W]/) # --> should split the sentence into array
    word_list = {}
    
    split_sentence.each do |word|
      if word[0] == "'" || word[-1] == "'"
        word.gsub!(/'/, "")
      end
      
      
      if word_list.include? word
        word_list[word] += 1
      else
        word_list[word] = 1
      end
    end
    
    word_list
  end

end

module BookKeeping
  VERSION = 1
end

p phrase = Phrase.new("Joe can't tell between 'large' and large.")
counts = phrase.word_count
puts counts