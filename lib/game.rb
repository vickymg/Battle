class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2, player_klass = Player)
    # @player_klass = player_klass
    @player_1 = player_klass.new(player_1)
    @player_2 = player_klass.new(player_2)
  end

  def attack(player)
    player.take_hit
  end

end
