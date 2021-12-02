# fizz for mult of 3
# buzz for mult of 5
# wazz for mult of 7

def fizzbuzz(input)
  output = ""

  output += "fizz" if input.multiple_of? 3
  output += "buzz" if input.multiple_of? 5

  return output unless output == ""
  input
end

class Integer 
  def multiple_of?(num)
    self % num == 0
  end
end
