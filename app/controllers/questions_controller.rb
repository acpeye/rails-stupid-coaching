class QuestionsController < ApplicationController
  ANSWERS = {
    good: 'Great!',
    badQuestion: 'Silly question, get dressed and go to work!',
    bad: "I don't care, get dressed and go to work!"}

  def ask
  end

  def answer
    @answer = ANSWERS[:bad]
    if params[:question].downcase == "i am going to work"
      @answer = ANSWERS[:good]
    elsif params[:question].last == "?"
      @answer = ANSWERS[:badQuestion]
    end
  end
end
