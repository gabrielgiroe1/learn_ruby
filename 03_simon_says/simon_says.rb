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

  def titleize(gstring)
    word_no_capitalizes=["and", "or", "over", "to", "the", "a", "but","at"]
    variablee=""
    result_word=gstring.split(" ").map{|word|
       word_no_capitalizes.include?word ? variablee+=+ " " + word[0].upcase() + word[1..-1] : variablee+=+" " + word
    }.join(" ")
    puts variablee
     variablee
  end

