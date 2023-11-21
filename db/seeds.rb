# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Item.destroy_all
User.destroy_all

# Item generation

Item.create(
  title: "Le radeau de la Méduse",
  description: "Un grand tableau de maître",
  price: 500,
  category: "paintings",
  user_id: 1,
  artist: "Théodore Géricault",
  address: "20, rue des Boulets"
)

Item.create(
  title: "Vaches dans la prairie",
  description: "Une oeuvre très reposante",
  price: 8,
  user_id: 1,
  category: "paintings",
  artist: "Edwin Goulainger",
  address: "120, boulevard Palourdes"
)

Item.create(
  title: "Bain de minuit",
  description: "Un tableau rafraîchissant",
  price: 12,
  user_id: 1,
  category: "paintings",
  artist: "Noémie Depain",
  address: "111, impasse Lepoivre"
)

Item.create(
  title: "Vase en terre cuite Inca",
  description: "Juste somptueux",
  price: 150,
  user_id: 2,
  category: "decoration",
  artist: "inconnu",
  address: "16, impasse Taga"
)

Item.create(
  title: "Fauteuil Louis XVI",
  description: "Ne convient pas à toutes les fesses",
  price: 40,
  user_id: 2,
  category: "furniture",
  artist: "inconnu",
  address: "61, rue Stanislas"
)

Item.create(
  title: "Casque de Vércingétorix",
  description: "Parfait pour tous les maux de crâne",
  price: 65,
  user_id: 3,
  category: "decoration",
  artist: "inconnu",
  address: "138, rue Stic"
)

Item.create(
  title: "Pouf en antilope",
  description: "Le confort, c'est trop fort",
  price: 33,
  user_id: 2,
  category: "furniture",
  artist: "Jimmy McSkin",
  address: "42, rue Tabeuge"
)

Item.create(
  title: "Sculpture de dieu aztèque",
  description: "Cette sculpture impose le respect",
  price: 211,
  user_id: 1,
  category: "",
  artist: "Jimmy McSkin",
  address: "42, rue Tabeuge"
)

# User generation

User.create(
  title:
)
