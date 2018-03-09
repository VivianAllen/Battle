class RandomResults

  attr_reader :damage_results_ary, :winsults_ary

  def initialize(damage_results_ary, winsults_ary)
    @damage_results_ary = damage_results_ary
    @winsults_ary = winsults_ary
  end

  def damage_result
    @damage_results_ary.sample
  end

  def winsult
    @winsults_ary.sample
  end

end
