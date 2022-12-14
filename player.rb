class Player
  attr_accessor :current_life_count
  attr_reader :id

  def initialize(id)
    @id = id
    @current_life_count = 3
  end

  def decrease_life_count
    @current_life_count -= 1
  end

  def alive?
    @current_life_count > 0 ? true : false
  end
end
