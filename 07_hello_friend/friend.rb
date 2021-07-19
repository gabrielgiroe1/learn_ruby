class Friend
  def greeting(who = nil)
    string = "Hello!"
    if who != nil
      string[string.length - 1] = ","
      string = string.concat(" ")
      string = string.concat(who)
      string = string.concat("!")
    end
    string
  end
end
