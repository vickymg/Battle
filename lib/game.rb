class Game

  attr_reader :player_1, :player_2, :attacker, :game_over, :looser, :winner

  def initialize(player_1, player_2, player_klass = Player)
    # @player_klass = player_klass
    @player_1 = player_klass.new(player_1)
    @player_2 = player_klass.new(player_2)
    @attacker = true
    @game_over = false
    @looser = nil
    @winner = nil
  end

  def attack
      @attacker  ? @player_1.take_hit : @player_2.take_hit
      game_over_check
      @attacker = !@attacker
  end

  def game_over_check
    if @player_1.dead?
      @game_over = true
      @looser = @player_1
      @winner = @player_2
    elsif @player_2.dead?
      @game_over = true
      @looser = @player_2
      @winner = @player_1
    end
  end

end
