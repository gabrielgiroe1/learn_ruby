def rotate_n_letter(value, number)
  "#{value[number..-1]}#{value[0..number-1]}"
end
def pig_latin_for_one_word(word)
  vowel = ["a", "e", "i", "o", "u"]
  i = 0
  loop do
    if i >= word.length
      return rotate_n_letter(word,1)
    end

    if (word[0] === "q") & (word[1] === "u")
      word= rotate_n_letter(word,2)
    end

    if vowel.include? word[0]
      return word
    else
      word=rotate_n_letter(word,1)
      i+=1
    end

  end
end

def translate (string)
  string.downcase.split.map { |word| pig_latin_for_one_word(word) + "ay" }.join(" ")
end
