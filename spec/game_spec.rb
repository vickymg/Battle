require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe "#attack" do

    before do
      allow(player_1).to receive(:take_hit).and_return(false)
    end

    it 'attacks player' do
      expect(game.attack).to eq(false)
    end

    it 'attacks player' do
      game.attack
      expect(game.attack).to eq(true)
    end

    it 'checks if the player is dead after attack' do
      12.times { game.player_1.take_hit }
      expect(game.player_1).to be_dead
    end
  end

end
