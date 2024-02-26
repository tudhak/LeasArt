class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  #constante utilisée pour la génération des cards de category dans la homepage
  CATEGORY = [
    {name: "Paintings", icon: "fa-solid fa-paintbrush", url: "https://artetpaix.net/modules/homeslider/images/674539d025d637f3d9962eda4ba230879b6784e3_galerie-tableaux-6716-779x448.jpg"},
    {name: "Decoration", icon: "fa-solid fa-jar-wheat", url: "https://www.meublessourice.fr/docs/2/PagesLibres/objets-de-decoration-min.jpg"},
    {name: "Furniture", icon: "fa-solid fa-chair", url: "https://www.starck.fr/00DATA/cms/design/dior/9.jpg"},
    {name: "Sculptures", icon: "fa-solid fa-hammer", url: "https://www.galerie-malaquais.com/fr/oeuvres/thumb/55/m"},
    {name: "Jewels", icon: "fa-regular fa-gem", url: "https://images.unsplash.com/photo-1588444968576-f8fe92ce56fd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"},
    {name: "Photographs", icon: "fa-solid fa-camera-retro", url: "https://www.myposter.fr/magazin/wp-content/uploads/2019/07/art-black-and-white-black-and-white-21264-scaled.jpg"}
  ]

  #constante utilisée pour la validation du champ category dans le form Items/new
  CATEGORY_NAME = []
  CATEGORY.each do |category|
    CATEGORY_NAME << category[:name]
  end

  validates :category, presence: true
end
