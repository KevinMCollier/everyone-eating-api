class AnswerLocation < ApplicationRecord
  belongs_to :answer
  belongs_to :location
end
