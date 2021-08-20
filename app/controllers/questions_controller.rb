class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
    @answer = @question.answers.build
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "スケジュールを登録しました"
      redirect_to :question
    else
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def question_params
      params.require(:question).permit(:number, :difficulty, :statement, :one_answer, answers_attributes: [:answer, :correct])
    end
end
