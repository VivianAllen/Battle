class Player

  DEFAULT_HP = 100

  attr_reader :name, :hp, :suffix

  def initialize(name, hp=DEFAULT_HP, suffix=nil, damage_calc = DamageCalc.new)
    @name = name
    @hp = hp
    @suffix = suffix
    @damage_calc = damage_calc
  end

  def receive_damage
    @hp -= @damage_calc.damage
    @hp = 0 if @hp < 0
  end

  def change_suffix(suffix)
    @suffix = suffix
  end

  def full_name
    "#{@name} #{@suffix}"
  end

end
