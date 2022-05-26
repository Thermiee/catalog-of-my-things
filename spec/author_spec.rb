require './app/author'
require './app/item'
require './app/game'

describe Author do
  context 'when a author is created' do
    it 'should have a first name' do
      author = Author.new('John', 'Doe', 1)

      expect(author.first_name).to eq('John')
    end

    it 'should have a last name' do
      author = Author.new('John', 'Doe', 1)

      expect(author.last_name).to eq('Doe')
    end

    it 'should have an id' do
      author = Author.new('John', 'Doe', 1)

      expect(author.id).to eq(1)
    end

    it 'should have an items array' do
      author = Author.new('John', 'Doe', 1)

      expect(author.items).to eq([])
    end
  end
end
