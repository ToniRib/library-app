require 'library_app/book'

RSpec.describe Book do
  before do
    @book = Book.new('The Gunslinger', 'Stephen King', 'The Dark Tower')
  end

  it 'has a title' do
    expect(@book.title).to eq 'The Gunslinger'
  end

  it 'has an author' do
    expect(@book.author).to eq 'Stephen King'
  end

  it 'has a series' do
    expect(@book.series).to eq 'The Dark Tower'
  end
end
