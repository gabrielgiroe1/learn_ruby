def reverser
  yield.split.map { |word| word.reverse }.join(" ")
end

def adder(x = 1)
  yield + x
end

def repeater(x = 0, &block)
  if x == 0
    block.call
  else
    (1..x).each do |var|
      yield
    end
  end
end