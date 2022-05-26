class Game
  attr_accessor :name, :published, :multiplayer, :last_played, :archived

  def initialize(name, published, multiplayer, last_played, archived: false)
    @name = name
    @published = published
    @multiplayer = multiplayer
    @last_played = last_played
    @archived = archived
  end

  private

  def can_be_archived?
    super && (last_played.year < Time.new.year - 2)
  end
end
