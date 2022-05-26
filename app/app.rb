require_relative './console'
require_relative '../data/book_crud'
require_relative '../data/label_crud'
require_relative './book_list'
require_relative './book'

class App
  attr_accessor :books, :labels, :games, :authors

  include Console
  include Booklist

  def initialize
    @books = []
    @games = []
    @labels = []
    @authors = []
  end

  def run
    puts 'Hi!! Welcome to My Category App'
    @books = populate_books
    @labels = populate_labels
  end
end
