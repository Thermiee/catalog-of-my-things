class Game
  attr_accessor :multiplayer, :last_played

  def initialize(name, published, multiplayer, last_played)
    @name = name
    @published = published
    @multiplayer = multiplayer
    @last_played = last_played
  end

  private

  def can_be_archived?
    super && (Time.now - @last_played) > 60
  end
end
