def pig_latin_for_one_word(string1)
  vowel = ["a", "e", "i", "o", "u"]
  i = 0
  loop do
    if i > string1.length() #word have just consonant and this is a problem
      break
    end

    if (string1[0] === "q") & (string1[1] === "u")
      string.rotate(2)
      break
    end

    if vowel.include? string1[0]
      i += 1
      break
    else
      string1.rotate(1)
    end
  end
  string1
end

def translate (string)
  string.downcase.split.map { |word| pig_latin_for_one_word(word) + "ay" }.join(" ")
end