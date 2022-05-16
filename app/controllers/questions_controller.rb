class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @coach_response = ''
    @question = params[:question]
    @coach_response = if @question == 'I am going to work'
                        'Great!'
                      elsif @question.last == '?'
                        'Silly question, get dressed and go to work!'
                      else
                        "I don't care, get dressed and go to work!"
                      end
  end
end
