require_relative './book'
require './author'
require './game'
require './game_list'

class App
  include GameList
  attr_accessor :books, :labels, :authors, :items, :games

  def initialize
    @books = []
    @labels = []
    @authors = []
    @games = []
  end

  def welcome
    puts 'Welcome to our Ruby Capstone!!'
  end
end
