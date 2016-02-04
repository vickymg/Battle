class Player

  START_HP = 60
  HIT = 5

attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = START_HP
  end

  def attack(player)
    player.take_hit
  end

  def take_hit
    @hit_points -= HIT
    @hit_points
  end

end
