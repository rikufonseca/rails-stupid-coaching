class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    # si question est egal a .....
    @answer = casse_couille(@question)
  end

  private

  def casse_couille(question)
    if question == "I am going to work"
      # repondre ...
      "Great!"
    #sinon si question contient un ?
    elsif question.end_with?("?")
      # repondre ....
      "Silly question, get dressed and go to work!"
    #sinon
    else
      # repondre ....
      "I don't care, get dressed and go to work!"
    end
  end
end
