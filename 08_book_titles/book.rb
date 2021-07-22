class Book
  attr_writer :title

  def title
    lower_words = %w[or and over the a an in of].freeze
    @title.capitalize.split.map { |word| lower_words.include?(word) ? word : word.capitalize }.join(" ")
  end
end