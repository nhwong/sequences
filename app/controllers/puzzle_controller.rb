class PuzzleController < ApplicationController

  def clear_guesses
    Guess.delete_all
    guess
  end

  def guess
    new_guess = Guess.new
    if params[:first_number] != nil
      new_guess.first_num = params[:first_number]
      new_guess.second_num = params[:second_number]
      new_guess.third_num = params[:third_number]
      new_guess.save
    end

    @list = Guess.all

    render("guess.html.erb")
  end

  def show_answer
    @user_rule = params[:rule]
    render("show_answer.html.erb")
  end
end
