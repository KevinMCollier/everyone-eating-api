class Location < ApplicationRecord
  has_many :answer_locations
  has_many :answers, through: :answer_locations

  validates :name, presence: true
  validates :code, presence: true, uniqueness: true, length: { is: 2 }
end
