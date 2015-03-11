# Jade & Mark
def translate(word)
  vowels = /[aeiou]/
  word_list = word.split(' ')
  a = 'ay'
  butchered_word_list = []
  word_list.each do |other_word|
    character_list = other_word.split('')
    if (character_list[0] =~ vowels) == 0
      butchered_word_list << other_word + a
    elsif (character_list[0] =~ vowels) == nil
      count = 0
      character_list.each do |single|
        if single == 'q'
          count += 2
           break
        elsif (single =~ vowels) == nil
          count += 1
        else
          break
        end
      end
      first_part = character_list.slice(0...count).join
      second_part = character_list.slice(count..character_list.length - 1).join
      butchered_word = second_part + first_part + a
      butchered_word_list << butchered_word
    end
  end
  return butchered_word_list.join(' ')
end

# Dan & Mark
=begin
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
=end
