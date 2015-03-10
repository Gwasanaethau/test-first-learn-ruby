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