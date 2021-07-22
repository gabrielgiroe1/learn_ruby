class Friend
  def greeting(person_name = nil)
    string = "Hello"
    person_name != nil ? "#{string}, #{person_name}!" : "#{string}!"
  end
end
