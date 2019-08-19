class player
attr_reader :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose
    @lives = 0
      prints("you lose")
  end

  def wrong
    @lives - 1
      prints("you lost a life")
  end

end
