class Service < ApplicationRecord
  include PgSearch
  multisearchable against: [:category, :description]
  belongs_to :user
  has_many :bookings, dependent: :destroy
  CATEGORIES = ["Government Departments", "Forms", "Trips", "Health and Diet", "Neighborhoods"]
  validates_inclusion_of :category, in: CATEGORIES
end
