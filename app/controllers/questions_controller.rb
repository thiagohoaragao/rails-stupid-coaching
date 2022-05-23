class QuestionsController < ApplicationController
  def ask
    # to ask
  end

  def answer
    @question = params[:question]
    @answer = if @question.end_with?('?')
                'Silly question, get dressed and go to work!'
              elsif @question.downcase == 'i am going to work right now!'
                'Greaty'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
