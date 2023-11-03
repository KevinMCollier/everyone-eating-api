class Question < ApplicationRecord
  has_many :answers

  validates :text, presence: true, uniqueness: true
  validates :active, inclusion: { in: [true, false] }
end
