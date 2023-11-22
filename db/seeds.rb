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
  category: Item::CATEGORY.first[:name],
  user_id: User.first.id,
  artist: "Théodore Géricault",
  address: "15, rue dupin 75006 Paris"
)

Item.find_or_create_by!(
  title: "Vaches dans la prairie",
  description: "Une oeuvre très reposante",
  price: 8,
  user_id: User.first.id + 1,
  category: Item::CATEGORY.first[:name],
  artist: "Edwin Goulainger",
  address: "31, boulevard de la republique 92250 La-Garenne-Colombes"
)

Item.create!(
  title: "Bain de minuit",
  description: "Un tableau rafraîchissant",
  price: 12,
  user_id: User.first.id,
  category: Item::CATEGORY.first[:name],
  artist: "Noémie Depain",
  address: "15, rue d'argenteuil 75001 Paris"
)

Item.create!(
  title: "Vase en terre cuite Inca",
  description: "Juste somptueux",
  price: 150,
  user_id: User.first.id,
  category: Item::CATEGORY[1][:name],
  artist: "inconnu",
  address: "46, rue de nanterre, 92600 Asnières-sur-seine"
)

Item.create!(
  title: "Fauteuil Louis XVI",
  description: "Ne convient pas à toutes les fesses",
  price: 40,
  user_id: User.first.id,
  category: Item::CATEGORY[2][:name],
  artist: "inconnu",
  address: "5, rue erard 75012 Paris"
)

Item.create!(
  title: "Casque de Vércingétorix",
  description: "Parfait pour tous les maux de crâne",
  price: 65,
  user_id: User.first.id + 2,
  category: Item::CATEGORY[1][:name],
  artist: "inconnu",
  address: "100, avenue d'argenteuil 92600 Asnières-sur-seine"
)

Item.create!(
  title: "Pouf en antilope",
  description: "Le confort, c'est trop fort",
  price: 33,
  user_id: User.first.id + 1,
  category: Item::CATEGORY[2][:name],
  artist: "Jimmy McSkin",
  address: "98, boulevard voltaire 75011 Paris"
)

Item.create!(
  title: "Sculpture de dieu aztèque",
  description: "Cette sculpture impose le respect",
  price: 211,
  user_id: User.first.id,
  category: Item::CATEGORY[3][:name],
  artist: "Oropeu u' Upureo",
  address: "4 rue bapst 92600 Asnières-sur-seine"
)

Item.create!(
  title: "Buste de foan en émeraude",
  description: "Préparez-vous à être éblouis",
  price: 10_000,
  user_id: User.last.id,
  category: Item::CATEGORY[4][:name],
  artist: "Balance I. Haga",
  address: "98 boulevard maleshrbes 75017 paris"
)

Item.create!(
  title: "Topazes pas nazes",
  description: "La scintillance à l'état pur",
  price: 1_320,
  user_id: User.last.id,
  category: Item::CATEGORY[4][:name],
  artist: "Jay R. Mess",
  address: "108, rue Saint Honoré 75001 Paris"
)

Item.create!(
  title: "Les doigts de Zeus",
  description: "La foudre dans la main",
  price: 680,
  user_id: User.first.id + 1,
  category: Item::CATEGORY[3][:name],
  artist: "Feu le sculpteur",
  address: "51, rue de l'aigle 92250 La Garenne Colombes"
)

Item.create!(
  title: "La passion de Zaya",
  description: "Un camaïeu d'émotions en couleur",
  price: 45,
  user_id: User.first.id + 2,
  category: Item::CATEGORY[0][:name],
  artist: "Ben Z. Hemah",
  address: "63, rue jean bonal 92250 La Garenne Colombes"
)
