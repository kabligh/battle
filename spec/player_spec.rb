require "player"

describe Player do
  subject(:annabel) { Player.new("Annabel") }
  subject(:luke) { Player.new("Luke") }

  describe "#name" do
    it "returns the name" do
      expect(annabel.name).to eq "Annabel"
    end
  end

  describe "#hit_points" do
    it "returns the hit points" do
      expect(annabel.hit_points).to eq described_class::DEFAULT_HP
    end
  end

  describe "#attack" do
    it "hurts the other player" do
      expect(luke).to receive(:receive_damage)
      annabel.attack(luke)
    end
  end

  describe "#receive_damage" do
    it "reduces the player's HP" do
      expect { annabel.receive_damage }.to change { annabel.hit_points }.by(-10)
    end
  end
end
