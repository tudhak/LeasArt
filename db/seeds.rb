# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Item.create(
  title: "Le radeau de la Méduse",
  description: "Un grand tableau de maître",
  price: 500,
  category: Item::CATEGORY.first,
  user_id: 1,
  artist: "Théodore Géricault",
  address: "20, rue des Boulets"
)

Item.create(
  title: "Vaches dans la prairie",
  description: "Une oeuvre très reposante",
  price: 8,
  user_id: 1,
  category: Item::CATEGORY.first,
  artist: "Edwin Goulainger",
  address: "120, boulevard Palourdes"
)

Item.create(
  title: "Bain de minuit",
  description: "Un tableau rafraîchissant",
  price: 12,
  user_id: 1,
  category: Item::CATEGORY.first,
  artist: "Noémie Depain",
  address: "111, impasse Lepoivre"
)

Item.create!(
  title: "Vase en terre cuite Inca",
  description: "Juste somptueux",
  price: 150,
  user_id: 1,
  category: Item::CATEGORY[1],
  artist: "inconnu",
  address: "16, impasse Taga"
)

Item.create!(
  title: "Fauteuil Louis XVI",
  description: "Ne convient pas à toutes les fesses",
  price: 40,
  user_id: 1,
  category: Item::CATEGORY[2],
  artist: "inconnu",
  address: "61, rue Stanislas"
)
