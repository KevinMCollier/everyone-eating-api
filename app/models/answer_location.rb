class AnswerLocation < ApplicationRecord
  belongs_to :answer
  belongs_to :location

  validates :answer_id, presence: true
  validates :location_id, presence: true
  validates :answer_id, uniqueness: { scope: :location_id }
end
