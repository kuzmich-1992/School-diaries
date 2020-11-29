class Week < ApplicationRecord
  has_many :days
  validates :month, presence: true
  validates :behavior, presence: true
  validates :number_of_missed_lessons, presence: true
  belongs_to :diary
end
