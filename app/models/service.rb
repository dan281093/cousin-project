class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings
  CATEGORIES = ["Government Departments", "Forms", "Trips", "Health and Diet", "Neighborhoods"]
  validates_inclusion_of :category, in: CATEGORIES
end
