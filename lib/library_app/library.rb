class Library
  attr_accessor :name, :books

  def initialize(name)
    @name = name
    @books = []
  end

  def add_book(new_book)
    books << new_book
  end

  def remove_book_by_index(index)
    books.delete_at(index)
  end
end

my_library = Library.new("Toni's Library")