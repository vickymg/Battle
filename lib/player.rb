class Player

  START_HP = 60
  HIT = 5

attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = START_HP
    @dead = false
  end

  def take_hit
    @hit_points -= HIT
    dead?
    @hit_points
  end

  def dead?
    @dead = true if @hit_points == 0
    @dead
  end

end
