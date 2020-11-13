require 'game'
require 'player'

describe Game do
  let(:player_1) { Player.new("Annabel") }
  let(:player_2) { Player.new("Luke") }
  subject(:game) { Game.new(player_1, player_2) }

  describe "#initialize" do
    it "starts with two players" do
      expect(game.player_1).to eq(player_1)
      expect(game.player_2).to eq(player_2)
    end
  end

  describe "#attack" do
    it "hurts the other player" do
      expect{ game.attack(player_1) }.to change{ player_1.hit_points }.by(-10)
    end
  end

  # describe "choose_player" do
  #   it "decides player 1 starts first" do
  #     srand(4567)
  #     expect(game.choose_player).to eq(player_1.name)
  #   end
  # 
  #   it "decides player 2 starts first" do
  #     srand(4566)
  #     expect(game.choose_player).to eq(player_2.name)
  #   end
  # end
end
