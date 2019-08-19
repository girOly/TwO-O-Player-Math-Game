require "./question"
  class Game

    attr_accessor :round


    def initialize
      @player1 = Player.new("player1")
      @player2 = Player.new("player2")
      @current_player = [@player1, @player2].sample
    end

    def start_game
      @round = 0
      while @current_player.lives >= 1
        puts("Round #{@round}, Fight! ")
        puts("it's your turn #{@current_player.to_s}!!")
      @question = Question.new
      @question.new_question
      @answer = gets.chomp.to_i

      if(@question.answer_question(@answer))
        puts("Good job!")
      else
        @current_player.wrong
      end
      puts("You have #{@current_player.lives} lives remaining")
      switch_player()
      puts("it's your turn #{@current_player.to_s}!!")
      @question.new_question
      @answer = gets.chomp.to_i

      if(@question.answer_question(@answer))
        puts("Testing True")
      else
        @current_player.wrong
      end
      puts("You have #{@current_player.lives} lives remaining")
      next_round()

    end
    end

    def next_round
      @round += 1
    end

    def switch_player()
      # Define the Current Player?
      if (@current_player == @player1)
        @current_player = @player2
      elsif (@current_player == @player2)
        @current_player = @player1
      end
    end

  end
