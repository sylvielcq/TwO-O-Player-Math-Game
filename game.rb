class Game
  attr_accessor :current_player

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @current_player = @player1
  end

  def switch_player
    @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
  end

  def winner
    if @player1.current_life_count > @player2.current_life_count
      winner = @player1
    else
      winner = @player2
    end
  end

  def start
    question = Question.new

    puts "Player #{@current_player.id}: #{question.question}"
    print "> "
    input = $stdin.gets.chomp.to_i

    if question.check_answer(input)
      puts "Player #{@current_player.id}: YES! You are correct."
    else
      puts "Player #{@current_player.id}: Seriously? No!"
      @current_player.decrease_life_count
    end

    puts "P1: #{@player1.current_life_count}/3 vs P2: #{@player2.current_life_count}/3"

    if @player1.alive? && @player2.alive?
      puts "----- NEW TURN -----"
      self.switch_player
      self.start
    else
      puts "Player #{self.winner.id} wins with a score of #{self.winner.current_life_count}/3"
      puts "----- GAME OVER -----"
      puts ("Good bye!")
    end
  end
end