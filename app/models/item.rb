class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings

  CATEGORY = ["Paintings", "Decoration", "Furniture", "Sculpture", "Jewels"]

  validates :category, presence: true
end
