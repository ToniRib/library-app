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

  it 'has not been read' do
    expect(@book.have_read).to be false
  end

  it 'can be marked as read' do
    @book.read
    expect(@book.have_read).to be true
  end

  it 'has not been checked out' do
    expect(@book.checked_out).to be false
  end

  it 'can be checked out' do
    @book.check_out
    expect(@book.checked_out).to be true
  end

  it 'can be checked back in' do
    @book.check_out
    @book.check_in
    expect(@book.checked_out).to be false
  end
end
