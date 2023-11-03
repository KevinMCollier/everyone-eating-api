class Answer < ApplicationRecord
  belongs_to :question
  has_many :answer_locations
  has_many :locations, through: :answer_locations

  validates :response, presence: true
  validates :question_id, presence: true
end
