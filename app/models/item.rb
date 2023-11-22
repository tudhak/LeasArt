class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  CATEGORY = ["Paintings", "Decoration", "Furniture", "Sculpture", "Jewels"]

  validates :category, presence: true
end
