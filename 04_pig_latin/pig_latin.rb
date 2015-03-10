def translate(words)
  vowels = %w{a e i o u}
  words.split(" ").map do |word|
    if vowels.include?(word[0])
      word + "ay"
    elsif word[0..1] == "qu"
      word[2..-1] + word[0..1] + "ay"
    elsif vowels.include?(word[1])
      word[1..-1] + word[0] + "ay"
    elsif word[1..2] == "qu"
      word[3..-1] + word[0..2] + "ay"
    elsif vowels.include?(word[2])
      word[2..-1] + word[0..1] + "ay"
    else
      word[3..-1] + word[0..2] + "ay"
    end
  end.join(" ")
end