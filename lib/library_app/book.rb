class Book
  attr_reader :title, :author, :series
  attr_accessor :have_read, :checked_out

  def initialize(title, author, series = 'N/A')
    @title = title
    @author = author
    @series = series
    @have_read = false
    @checked_out = false
  end

  def to_s
    "#{title} by #{author}"
  end

  def read
    self.have_read = true
  end

  def check_out
    self.checked_out = true
  end

  def check_in
    self.checked_out = false
  end
end
