class Question
  def initialize
    @random_number1 = rand(21)
    @random_number2 = rand(21)
  end

  def question
    "What does #{@random_number1} plus #{@random_number2} equal?"
  end

  def answer
    answer = @random_number1 + @random_number2
  end

  def check_answer(input)
    if input == answer
      true
    else
      false
    end
  end
end