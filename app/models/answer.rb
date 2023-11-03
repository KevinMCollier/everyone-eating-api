class Answer < ApplicationRecord
  belongs_to :question
  has_many :answer_locations
  has_many :locations, through: :answer_locations
end
