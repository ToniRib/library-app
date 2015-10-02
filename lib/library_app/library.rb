require_relative 'book'

require 'pry'

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

  def remove_book_by_title(t)
    books.delete_at( books.index { |book| book.title == t } )
  end
end

# my_library = Library.new("Toni's Library")
# my_book = Book.new('The Gunslinger', 'Stephen King', 'The Dark Tower')
# second_book = Book.new('Cell', 'Stephen King')
# my_library.add_book(my_book)
# my_library.add_book(second_book)

