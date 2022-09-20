class Player
  attr_accessor :current_life_count
  attr_reader :id

  def initialize(id)
    @id = id
    @current_life_count = 3
  end

  def decrease_life_count
    @current_life_count -= 1
    puts "Player #{id} current life count = #{current_life_count} "
  end
end
