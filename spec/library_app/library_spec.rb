require 'library_app/library'
require 'library_app/book'

RSpec.describe Library do
  before do
    @library = Library.new("Toni's Library")
    @book = Book.new('The Gunslinger', 'Stephen King', 'The Dark Tower')
    @library.books << @book
  end

  it 'has a name' do
    expect(@library.name).to eq "Toni's Library"
  end

  it 'has at least one book' do
    expect(@library.books).not_to be_empty
  end

  it 'can add a book' do
    @book2 = Book.new('The Drawing of the Three', 'Stephen King', 'The Dark Tower')
    @library.add_book(@book2)
    expect(@library.books[1].title).to eq 'The Drawing of the Three'
  end

  it 'can remove a book by index' do
    @library.remove_book_by_index(0)
    expect(@library.books).to be_empty
  end
end
