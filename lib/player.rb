class Player

  DEFAULT_HP = 100

  attr_reader :name, :hp, :suffix

  def initialize(name, hp=DEFAULT_HP, suffix=nil)
    @name = name
    @hp = hp
    @suffix = suffix
  end

  def receive_damage
    @hp -= 10
  end

  def change_suffix(suffix)
    @suffix = suffix
  end

end
