class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings

  CATEGORY = ["Paintings", "Decoration", "Furnitures"]

  validates :category, presence: true
end
