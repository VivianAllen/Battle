class DamageCalc

  def initialize(min=5, max=30)
    @min = min
    @max = max
  end

  def damage
    rand(@min..@max)
  end

end
