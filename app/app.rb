require_relative './console'
require_relative '../data/book_crud'
require_relative '../data/label_crud'
require_relative './book_list'
require_relative './book'
require_relative '../game-and-author/game'
require_relative '../game-and-author/game_list'
require_relative '../data/games_crud'
require_relative '../data/author_crud'

class App
  attr_accessor :books, :labels, :games, :authors

  include Console
  include Booklist
  include GamesList

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
    @games = populate_games
    @authors = populate_authors
  end
end
