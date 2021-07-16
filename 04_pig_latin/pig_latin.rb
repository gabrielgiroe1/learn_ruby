def foo(value, number)
  "#{value[number..-1]}#{value[0..number-1]}"
end
def pig_latin_for_one_word(string1)
  vowel = ["a", "e", "i", "o", "u"]
  i = 0
  loop do
    if i >= string1.length
      return foo(string1,1)
    end

    if (string1[0] === "q") & (string1[1] === "u")
      string1= foo(string1,2)
    end

    if vowel.include? string1[0]
      return string1
    else
      string1=foo(string1,1)
      i+=1
    end

  end
end

def translate (string)
  string.downcase.split.map { |word| pig_latin_for_one_word(word) + "ay" }.join(" ")
end
