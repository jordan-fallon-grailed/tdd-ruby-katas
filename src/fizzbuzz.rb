def fizzbuzz(input)
  case input
  when -> n { fizzable n and buzzable n and wazzable n }
    'fizzbuzzwazz'
  when -> n { buzzable n and wazzable n }
    'buzzwazz'
  when -> n { fizzable n and wazzable n }
    'fizzwazz'
  when -> n { fizzable n and buzzable n }
    'fizzbuzz'
  when -> n { fizzable n }
    'fizz'
  when -> n { buzzable n }
    'buzz'
  when -> n { wazzable n }
    'wazz'
  else
    input
  end
end

def fizzable(n)
  n.multiple_of? 3
end

def buzzable(n)
  n.multiple_of? 5
end

def wazzable(n)
  n.multiple_of? 7
end

class Integer
  def multiple_of?(num)
    self % num === 0
  end
end
