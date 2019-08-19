class Player
attr_reader :lives, :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose
    @lives < 1
      puts("you lose")
  end

  def wrong
    @lives -= 1
      puts("you lost a life")
  end

end
