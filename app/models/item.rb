class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  #constante utilisée pour la génération des cards de category dans la homepage
  CATEGORY = [
    {name: "Paintings", url: "https://artetpaix.net/modules/homeslider/images/674539d025d637f3d9962eda4ba230879b6784e3_galerie-tableaux-6716-779x448.jpg"},
    {name: "Decoration", url: "https://www.meublessourice.fr/docs/2/PagesLibres/objets-de-decoration-min.jpg"},
    {name: "Furnitures", url: "https://www.starck.fr/00DATA/cms/design/dior/9.jpg"},
    {name: "Sculptures", url: "https://www.galerie-malaquais.com/fr/oeuvres/thumb/55/m"},
    {name: "Jewels", url: "https://images.unsplash.com/photo-1588444968576-f8fe92ce56fd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"}
  ]

  #constante utilisée pour la validation du champ category dans le form Items/new
  CATEGORY_NAME = []
  CATEGORY.each do |category|
    CATEGORY_NAME << category[:name]
  end

  validates :category, presence: true
end
