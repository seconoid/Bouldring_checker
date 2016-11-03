class Gym < ApplicationRecord
  belongs_to :owner, class_name: 'User'

  validates :name, length: { maximum: 20}, presence: true
  validates :place, length: { maximum: 40}, presence: true
end
