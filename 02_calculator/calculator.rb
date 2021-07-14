def add(a,b)
  a+b
end

def subtract(a,b)
  return (a-b)
end

def sum (arr)
  sum=0.0
  if arr.length<=0 then
    return  0
  end

  arr.each do |item |
    sum+=item
  end

  return sum
end

def multiply(base, exp)
  var1=1
  var=base

  while var<=exp
    var+=1
    var=var*base
  end
  return var
end