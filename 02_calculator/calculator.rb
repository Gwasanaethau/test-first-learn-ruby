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
