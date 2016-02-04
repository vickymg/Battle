class Game

  attr_reader :player_1, :player_2, :attacker

  def initialize(player_1, player_2, player_klass = Player)
    # @player_klass = player_klass
    @player_1 = player_klass.new(player_1)
    @player_2 = player_klass.new(player_2)
    @attacker = true
    @game_over = false
  end

  def attack#(player)
    @attacker  ? @player_1.take_hit : @player_2.take_hit
    game_over?
    @attacker = !@attacker
  end

  def game_over?
    @game_over if @player_1.dead? || @player_2.dead?
    @game_over
  end

end
