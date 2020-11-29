class Diary < ApplicationRecord
  has_many :weeks
  validates :name, presence: true
  validates :surname, presence: true
  validates :class, presence: true
end
