require_relative './book'

class App
  attr_accessor :books, :labels

  def initialize
    @books = []
    @labels = []
  end

  def welcome
    puts 'Welcome to our Ruby Capstone!!'
  end
end
