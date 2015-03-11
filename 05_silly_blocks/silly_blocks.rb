#Jade & Mark
def reverser
	word_list = yield.split(' ')
	word_list.map do |word|
		word.reverse
	end.join(' ')

end

def adder(number = 1)
	yield + number
end

def repeater(number_of_times = 1)
	number_of_times.times {yield}
end

# Dan & Mark
=begin
def reverser
  yield.split(' ').map(&:reverse).join(' ')
end

def adder(num=1)
  yield + num
end

def repeater(num=1)
  num.times {yield}
end
=end
