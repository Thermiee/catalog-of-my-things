class App
  attr_accessor :books, :games, :labels, :authors

  def initialize
    @books = []
    @games = []
    @labels = []
    @authors = []
  end

  def welcome
    puts 'Welcome to our Ruby Capstone!!'
  end
end
