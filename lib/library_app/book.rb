class Book
  attr_reader :title, :author
  attr_accessor :series

  def initialize(title, author, series = 'N/A')
    @title = title
    @author = author
    @series = series
  end

  def to_s
    "#{title} by #{author}"
  end
end
