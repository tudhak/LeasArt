class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  CATEGORY = [
    {name: "Paintings", url: "https://artetpaix.net/modules/homeslider/images/674539d025d637f3d9962eda4ba230879b6784e3_galerie-tableaux-6716-779x448.jpg"},
    {name: "Decoration", url: "https://www.meublessourice.fr/docs/2/PagesLibres/objets-de-decoration-min.jpg"},
    {name: "Furnitures", url: "https://www.starck.fr/00DATA/cms/design/dior/9.jpg"},
    {name: "Sculpture", url: "https://www.galerie-malaquais.com/fr/oeuvres/thumb/55/m"}
  ]

  validates :category, presence: true
end
