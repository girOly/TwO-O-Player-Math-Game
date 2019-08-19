class Question
  def initialize()
    @number1 = rand(101)
    @number2 = rand(101)
  end
  def newQuestion
    puts("#{@number1} + #{@number2}")
  end
end
