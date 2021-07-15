def echo (gstrin)
  gstrin
end

def shout gstring
  gstring.strip()
  gstring=gstring.upcase()
end

def   repeat (gstring, noumbers=2)
  return ([gstring]* noumbers).join(" ")
end

def start_of_word (gstring,noumber=0)
  return gstring[0,noumber]
end

def first_word(gstring)
  return  gstring.split.first()
end

def titleize(string)
  lower_words = ["or", "and", "over", "the"]
  if string.strip.include? " "
  resolve_string=string.split.map {  |word| lower_words.include?(word)? word  : word.capitalize  }.join(" ")
   else
    resolve_string=string.split.map { |word| lower_words.include?(word)? word  : word.capitalize }.join(" ")
  end
  if resolve_string[0]==="t"
  resolve_string[0]="T"
  end
  resolve_string
end

