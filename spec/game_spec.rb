require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe "#attack" do

    before do
      allow(player_1).to receive(:take_hit).and_return(55)
    end

    it 'attacks player' do
      expect(game.attack(player_1)).to eq(55)
    end
  end

end
