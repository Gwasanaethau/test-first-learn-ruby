def echo(arg)
  arg
end

def shout(arg)
  arg.upcase
end

def repeat(arg, num = 2)
  ("#{arg} " * num)[0..-2]
end

def start_of_word(arg, num)
  arg[0...num]
end

def first_word(arg)
  arg.split(" ")[0]
end

def titleize(arg)
  return arg.capitalize if arg.split(" ").length == 1
  little_words = ["if","but","and","or", "the", "over"]
  arg.split(" ").each_with_index.map{ |word, index| little_words.include?(word) && index != 0 ? word : word.capitalize}.join(" ")
end