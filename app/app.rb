require_relative './console'
require_relative './app'

class App
  attr_accessor :books, :labels, :games, :authors

  include Console

  def initialize
    @books = []
    @games = []
    @labels = []
    @authors = []
  end

  def run
    puts 'Hi!! Welcome to our Ruby Capstone Project'
    console_start
  end
end
