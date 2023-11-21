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

# User generation

User.create!(
  email: "jeanpaulbelmondo@ubs.ch",
  password: "abcdef",
  password_confirmation: "abcdef",
  first_name: "Jean-Paul",
  last_name: "Belmondo",
  description: "Je suis un beau gosse thuné et j'ai joué dans plein de films"
)

User.create!(
  email: "sophie.davant@tiscali.fr",
  password: "ghijkl",
  password_confirmation: "ghijkl",
  first_name: "Sophie",
  last_name: "Davant",
  description: "Je fais la pluie et le beau temps"
)

User.create!(
  email: "jeanlucmeluche@cgt.fr",
  password: "mnopqr",
  password_confirmation: "mnopqr",
  first_name: "Jean-Luc",
  last_name: "Meluche",
  description: "Pour le peuple, par le peuple"
)

User.create!(
  email: "Carlosghosn@bigbank.com",
  password: "stuvwx",
  password_confirmation: "stuvwx",
  first_name: "Carlos",
  last_name: "Ghosn",
  description: "Je suis un individu honnête et intègre"
)

# Item generation

Item.create!(
  title: "Le radeau de la Méduse",
  description: "Un grand tableau de maître",
  price: 500,
  category: Item::CATEGORY.first,
  user_id: User.first.id,
  artist: "Théodore Géricault",
  address: "20, rue des Boulets"
)

Item.find_or_create_by!(
  title: "Vaches dans la prairie",
  description: "Une oeuvre très reposante",
  price: 8,
  user_id: User.first.id + 1,
  category: Item::CATEGORY.first,
  artist: "Edwin Goulainger",
  address: "120, boulevard Palourdes"
)

Item.create!(
  title: "Bain de minuit",
  description: "Un tableau rafraîchissant",
  price: 12,
  user_id: User.first.id,
  category: Item::CATEGORY.first,
  artist: "Noémie Depain",
  address: "111, impasse Lepoivre"
)

Item.create!(
  title: "Vase en terre cuite Inca",
  description: "Juste somptueux",
  price: 150,
  user_id: User.first.id,
  category: Item::CATEGORY[1],
  artist: "inconnu",
  address: "16, impasse Taga"
)

Item.create!(
  title: "Fauteuil Louis XVI",
  description: "Ne convient pas à toutes les fesses",
  price: 40,
  user_id: User.first.id,
  category: Item::CATEGORY[2],
  artist: "inconnu",
  address: "61, rue Stanislas"
)

Item.create!(
  title: "Casque de Vércingétorix",
  description: "Parfait pour tous les maux de crâne",
  price: 65,
  user_id: User.first.id + 2,
  category: Item::CATEGORY[1],
  artist: "inconnu",
  address: "138, rue Stic"
)

Item.create!(
  title: "Pouf en antilope",
  description: "Le confort, c'est trop fort",
  price: 33,
  user_id: User.first.id + 1,
  category: Item::CATEGORY[2],
  artist: "Jimmy McSkin",
  address: "42, rue Tabeuge"
)

Item.create!(
  title: "Sculpture de dieu aztèque",
  description: "Cette sculpture impose le respect",
  price: 211,
  user_id: User.first.id,
  category: Item::CATEGORY[3],
  artist: "Oropeu u' Upureo",
  address: "La Mésopotamie"
)

Item.create!(
  title: "Buste de foan en émeraude",
  description: "Préparez-vous à être éblouis",
  price: 10_000,
  user_id: User.last.id,
  category: Item::CATEGORY[4],
  artist: "Balance I. Haga",
  address: "300 rue de la Richesse"
)

Item.create!(
  title: "Topazes pas nazes",
  description: "La scintillance à l'état pur",
  price: 1_320,
  user_id: User.last.id,
  category: Item::CATEGORY[4],
  artist: "Jay R. Mess",
  address: "108, Boulevard Saint Honoré"
)

Item.create!(
  title: "Les doigts de Zeus",
  description: "La foudre dans la main",
  price: 680,
  user_id: User.first.id + 1,
  category: Item::CATEGORY[3],
  artist: "Feu le sculpteur",
  address: "51, boulevard Arboise"
)

Item.create!(
  title: "La passion de Zaya",
  description: "Un camaïeu d'émotions en couleur",
  price: 45,
  user_id: User.first.id + 2,
  category: Item::CATEGORY[1],
  artist: "Ben Z. Hemah",
  address: "63, villa Stadium"
)
