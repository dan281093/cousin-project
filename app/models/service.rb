class Service < ApplicationRecord
  include PgSearch
  # multisearchable against: [:category, :description]
  pg_search_scope :search_by_category_and_description,
  against: [:category, :description],
  using: {
    tsearch: { prefix: true }
  }
  belongs_to :user
  has_many :bookings, dependent: :destroy
  CATEGORIES = ["Government Departments", "Forms", "Trips", "Health and Diet", "Neighborhoods"]
  validates_inclusion_of :category, in: CATEGORIES
end

