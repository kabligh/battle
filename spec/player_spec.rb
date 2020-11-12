require "player"

describe Player do
  subject(:annabel) { Player.new("Annabel") }

  describe "#name" do
    it "returns the name" do
      expect(annabel.name).to eq "Annabel"
    end
  end
end
