class RegisterQuestionsForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :number, :integer
  attribute :difficulty, :integer
  attribute :statement, :string
  attribute :one_answer, :boolean
  attribute :answer1, :string
  attribute :correct1, :boolean
  attribute :answer2, :string
  attribute :correct2, :boolean
  attribute :answer3, :string
  attribute :correct3, :boolean
  attribute :answer4, :string
  attribute :correct4, :boolean

  def save
    return false unless valid?
    question = Question.new(number: number, difficulty: difficulty, statement: statement, one_answer: one_answer)
    question.save

    answer = question.answers.build(answer: answer1, correct: correct1)
    answer.save

    question.answers.create(answer: answer2, correct: correct2)
    question.answers.create(answer: answer3, correct: correct3)
    question.answers.create(answer: answer4, correct: correct4)
  end
end
