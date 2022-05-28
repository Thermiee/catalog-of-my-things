require_relative '../game-and-author/game'
require_relative '../data/games_crud'

module GamesList
  def list_games
    if @games.empty?
      puts 'You don\'t have any games.'
    else
      @games.each_with_index do |game, index|
        puts "#{index} multiplayer: #{game.multiplayer},
          last_played_at: #{game.last_played_at},
          published_date:#{game.published_date},
          id: #{game.id}"
        puts ''
      end
    end
    puts ''
  end

  def list_authors
    if @authors.empty?
      puts 'You don\'t have any authors.'
    else
      @authors.each_with_index do |author, index|
        puts "#{index} name: #{author.name},
          id: #{author.id}"
        puts ''
      end
    end
    puts ''
  end

  def add_game
    print 'Is it a multiplayer game'
    multiplayer = gets.chomp
    print 'Publish date '
    published_date = gets.chomp
    print 'Last_played_date'
    last_played_at = gets.chomp

    games_data = Game.new(multiplayer, published_date, last_played_at)
    @games << games_data
    stored_games = fetch_data('games')
    stored_games.push(games_data)
    update_data('games', stored_games)
    puts 'Game saved successfully!'
  end
end
