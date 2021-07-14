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
    string.capitalize
  end

