require "./question"
  class Game

    attr_accessor :round


    def initialize
      player1 = Player.new("player1")
      player2 = Player.new("player2")
    end

    def startGame
      @round = 0
      @question = Question.new
      @question.newQuestion 
    end

    def nextRound
      @round += 1
    end

    def currentPlayer
      # Define the Current Player?
    end


  end
