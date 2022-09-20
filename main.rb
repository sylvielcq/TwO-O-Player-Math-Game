require './game';
require './player';
require './question';

player1 = Player.new(1)
# player2 = Player.new(2)

question = Question.new
puts "Player #{player1.id}: #{question.question}"
puts question.answer
puts question.check_answer(38)

