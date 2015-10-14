class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    @computer_move = ["rock" , "paper" , "scissors"].sample
        if @computer_move == @user_move
          @result = "It's a tie!"


        elsif (@user_move == "rock" && @computer_move == "paper") || (@user_move == "paper" && @computer_move == "scissors") || (@user_move == "scissors" && @computer_move == "rock")
         @result = "You lose!"

        elsif (@user_move == "rock" && @computer_move == "scissors") || (@user_move == "paper" && @computer_move == "rock") || (@user_move == "scissors" && @computer_move == "paper")
          @result = "You win!"

        end

      end


    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
