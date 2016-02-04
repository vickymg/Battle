require 'player'

describe Player do

  subject(:player) { described_class.new("Vicky") }

  describe "names saved to global variables" do
    it 'saves player_1_name' do
      expect(player.name).to eq "Vicky"
    end
  end

  describe "takes hit" do
    it 'takes HIT(5) from hit points(START_HP(60)) total' do
      expect(player.take_hit).to eq 55
    end
  end

end
