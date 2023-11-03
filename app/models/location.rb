class Location < ApplicationRecord
  has_many :answer_locations
  has_many :answers, through: :answer_locations
end
