def reverser
  yield.split.map { |word| word.reverse }.join(" ")
end

def adder(x = 1)
  yield + x
end

def repeater(x = 0, &block)
    x==0 ? block.call : (1..x).each do |var|
      yield
  end
end
