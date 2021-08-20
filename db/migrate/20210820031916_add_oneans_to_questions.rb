class AddOneansToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :one_answer, :boolean
  end
end
