class Player

  DEFAULT_HP = 100

  attr_reader :name, :hp, :suffix

  def initialize(name, hp=DEFAULT_HP, suffix=nil)
    @name = name
    @hp = hp
    @suffix = suffix
  end

  def receive_damage
    @hp -= rand(1..100)
    @hp = 0 if @hp < 0
  end

  def change_suffix(suffix)
    @suffix = suffix
  end

  def full_name
    "#{@name} #{@suffix}"
  end

end
