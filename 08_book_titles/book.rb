class Book

  def title=(title)
    @book = capitalize_title(title)
  end

  def capitalize_title(title)
    conjunction = %w{a an and in the of}
    title.split(" ").each_with_index.map { |word, index| !conjunction.include?(word) || index == 0 ? word.capitalize : word }.join(" ")
  end

  def title
    @book
  end

end