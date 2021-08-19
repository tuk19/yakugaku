class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.integer :number
      t.integer :difficulty
      t.string :statement
      t.string :ans1
      t.string :ans2
      t.string :ans3
      t.string :ans4

      t.timestamps
    end
  end
end
