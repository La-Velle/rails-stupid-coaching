class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:ask]
    @answer = ""
    if @ask.blank?
      @answer = "ask me a question!"
    elsif @ask == "I like easter bunnies!"
      @answer = "super!"
    elsif @ask.ends_with?("?")
      @answer = "silly"
    else
      @answer = "great question!!"
    end
  end
end
