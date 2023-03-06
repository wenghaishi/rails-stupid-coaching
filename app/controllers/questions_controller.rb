class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ans 

    ques = params[:question]
    if ques.downcase == "1"
      @ans = "Great!"
    elsif ques.end_with? "?"
      @ans = "Silly question, get dressed and go to work!"
    else
      @ans = "I don't care, get dressed and go to work!"
    end
  end
end
