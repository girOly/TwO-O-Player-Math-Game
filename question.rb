class Question
  def initialize()
    @number1 = rand(11)
    @number2 = rand(11)
  end
  def new_question
    puts("#{@number1} + #{@number2}")
  end
  def answer_question(answer)
    if (@number1 + @number2 == answer)
      puts("you're right")
      true
    else
      puts"you're wrong"
      false
    end
  end
end
