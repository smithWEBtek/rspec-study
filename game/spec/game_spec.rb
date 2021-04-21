require './game'

RSpec.describe Game do
  describe "#score" do
    it "returns 0 for an all gutter game" do
      game = Game.new
      20.times { game.roll(0) }
      expect(game.score).to eq(0)
    end

    it "returns 5 for five successful rolls" do
      game = Game.new
      5.times { game.roll(1) }
      expect(game.score).to eq(5)
    end
  end
end