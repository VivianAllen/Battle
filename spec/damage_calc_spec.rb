require 'damage_calc'

describe DamageCalc do
  it 'returns random damage between max and min' do
    damage_calc = described_class.new(1,100)
    damage_ary = []
    1000.times { damage_ary << damage_calc.damage }
    expect(damage_ary).to include(1)
    expect(damage_ary).to include(100)
  end
end
