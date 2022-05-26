require './game-and-author/author'
require './game-and-author/game'
require './app/item'

describe Game do
  context 'when a game is created' do
    it 'should have a name' do
      game = Game.new('Super Mario Bros', true, true, Time.now)

      expect(game.name).to eq('Super Mario Bros')
    end

    it 'should have a published status' do
      game = Game.new('Super Mario Bros', true, true, Time.now)

      expect(game.published).to eq(true)
    end

    it 'should have a multiplayer status' do
      game = Game.new('Super Mario Bros', true, true, Time.now)

      expect(game.multiplayer).to eq(true)
    end

    it 'should have a last played date' do
      game = Game.new('Super Mario Bros', true, true, Time.now)

      expect(game.last_played).to be_a(Time)
    end

    it 'should have an archived status' do
      game = Game.new('Super Mario Bros', true, true, Time.now)

      expect(game.archived).to eq(false)
    end
  end
end
