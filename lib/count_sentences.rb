require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentences = self.split(/[.?!]/).select { |sentence| sentence.length > 0 }
    puts "\nsentences"
    puts sentences
    
    sentences.length
  end
end

"one. two. three?".count_sentences
complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
complex_string.count_sentences