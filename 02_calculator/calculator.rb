# Ici & Mark
def add(number1, number2)
  number1 + number2
end

def subtract(number1, number2)
  number1 - number2
end

def sum(array)
  return 0 if array.empty?
  array.inject (:+)
end

def multiply(*numbers)
  numbers.inject (:*)
end

def power(number1, power)
  number1 ** power
end

def factorial(number)
  (1..number).inject(1) { |multiplication, element| multiplication * element }
end

# Dan
=begin
def add (num1,num2)
  num1+num2
end

def subtract(num1,num2)
  num1-num2
end

def sum(arr)
  arr.inject(0) {|sum, num| sum += num}
end

def multiply(*nums)
  nums.inject(1) {|sum, num| sum = num * sum}
end

def power(num1,num2)
  num1**num2
end

def factorial(num)
  return 1 if num == 0
  (1..num).inject(1) {|sum, num| num * sum }
end
=end
