class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  validates :number, uniqueness: true
end
