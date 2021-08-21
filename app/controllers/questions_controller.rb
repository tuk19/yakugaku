class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @register_questions_form = RegisterQuestionsForm.new
    if Question.all.count == 0
      @number = 0
    else
      @number = Question.all.count
    end
  end

  def create
    @register_questions_form = RegisterQuestionsForm.new(question_params)
    if @register_questions_form.save
      flash[:notice] = "スケジュールを登録しました"
      redirect_to questions_path
    else
      render "new"
    end
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def question_params
      params.require(:register_questions_form).permit(:number, :difficulty, :statement, :one_answer,
        :answer1, :correct1, :answer2, :correct2, :answer3, :correct3, :answer4, :correct4)
    end
end
