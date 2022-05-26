require_relative './book'
require './author'
require './item'
require './game'

class App
  include GameList
  attr_accessor :books, :labels, :authors, :items, :games

  def initialize
    @books = []
    @labels = []
    @authors = []
    @items = []
    @games = []
  end

  def welcome
    puts 'Welcome to our Ruby Capstone!!'
  end
end
