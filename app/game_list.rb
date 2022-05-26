module GameList
  def list_all_games
    puts 'Database is empty! Add a game.' if @games.empty?
    @games.each do |game|
      puts "name: #{game.name},
         published: #{game.published},
         multiplayer: #{game.multiplayer},
         last_played: #{game.last_played},
          archived: #{game.archived}"
    end
  end

  def add_game(name, published, multiplayer, last_played)
    @games << Game.new(name, published, multiplayer, last_played)
    puts "Game #{name} added!"
  end

  def archive_game(name)
    @games.each do |game|
      game.name == name && game.archived = true
    end
  end

  def list_all_authors
    puts 'Database is empty! Add an author.' if @authors.empty?
    @authors.each do |author|
      puts "name: #{author.first_name} #{author.last_name},
         id: #{author.id},
         items: #{author.items}"
    end
  end
end
