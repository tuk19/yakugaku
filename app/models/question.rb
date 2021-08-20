class Question < ApplicationRecord
  has_many :answers
  validates :number, uniqueness: true
end
