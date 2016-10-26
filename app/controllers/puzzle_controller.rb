class PuzzleController < ApplicationController

  def guess
    @first_number = params[:first_number]
    @second_number = params[:second_number]
    @third_number = params[:third_number]

    if @third_number.to_f > @second_number.to_f && @second_number.to_f > @first_number.to_f
      @obeys_rule = "Yes"
    else
      @obeys_rule = "No"
    end

    render("guess.html.erb")
  end

  def show_answer
    @user_rule = params[:rule]
    render("show_answer.html.erb")
  end
end
