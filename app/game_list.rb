require_relative './author'
require_relative './game'

module GameList
  def list_all_games
    if @games.empty?
      puts 'You don\'t have any Games.'
    else
      @games.each_with_index do |game, index|
        puts "#{index} name: #{game.name}, publisher: #{game.publisher}, publish_date:#{game.published_date}"
        puts ''
      end
    end
    puts ''
  end

  def list_all_authors
    if @authors.empty?
      puts 'You don\'t have any Authors.'
    else
      @authors.each_with_index do |author, index|
        puts "#{index} name: #{author.name}, publisher: #{author.publisher}, publish_date:#{author.published_date}"
        puts ''
      end
    end
    puts ''
  end

  def add_game
    print 'Title: '
    name = gets.chomp
    print 'publisher: '
    publisher = gets.chomp
    print 'date of publish: '
    published_date = gets.chomp
    print 'cover state: '
    cover_state = gets.chomp
    stored_games = fetch_data('games')
    handle_author
    game = Game.new(publisher, cover_state, name, published_date)
    @games << game
    game_data = { name: name, publisher: publisher, published_date: published_date,
                  cover_state: cover_state }
    stored_games.push(game_data)
    update_data('games', stored_games)
    puts 'Game added successfully'
  end
end
