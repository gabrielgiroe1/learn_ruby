def echo (saying)
  saying
end

def shout (phrase)
  phrase.strip
  phrase.upcase
end

def repeat (phrase, number = 2)
  ([phrase] * number).join(" ")
end

def start_of_word (phrase, number = 0)
  phrase[0, number]
end

def first_word(phrase)
  phrase.split.first
end

def titleize(phrase)
  lower_words = %w[or and over the]
  phrase.capitalize.split.map { |word| lower_words.include?(word) ? word : word.capitalize }.join(" ")
end

