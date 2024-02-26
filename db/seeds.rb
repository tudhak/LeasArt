# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"

puts "Destroying bookings..."
Booking.destroy_all

puts "Destroying items..."
Item.destroy_all

puts "Destroying users..."
User.destroy_all

# User generation
puts "Creating users..."
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

#---------------- Items generation -----------------------
puts "Creating items..."
# a = {
#   title: "Le radeau de la Méduse",
#   description: "Un grand tableau de maître",
#   price: 500,
#   category: Item::CATEGORY.first[:name],
#   user_id: User.first.id,
#   artist: "Théodore Géricault",
#   address: "15, rue dupin 75006 Paris"
# }
# ima = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQchk9wbwEyK68T_zbD5xuaT3HmFy0HoJaXjg&usqp=CAU"

b = {
  title: "Fallen sky",
  description: "Another stunning artwork by Edwin which truly captures the immensity of the world and fosters viewers' introspection.",
  price: 8,
  user_id: User.first.id + 1,
  category: Item::CATEGORY.first[:name],
  artist: "Edwin Goulainger",
  address: "31, boulevard de la republique 92250 La-Garenne-Colombes"
}
imb = "tableau1-resized.jpg"

# c = {
#   title: "Bain de minuit",
#   description: "Un tableau rafraîchissant",
#   price: 12,
#   user_id: User.first.id,
#   category: Item::CATEGORY.first[:name],
#   artist: "Noémie Depain",
#   address: "15, rue d'argenteuil 75001 Paris"
#   }
#   imc = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtXTJYk52L-cJicTg-V6AZHrFm3zvSaSXGrg&usqp=CAU"

# d = {
#   title: "Vase en terre cuite Inca",
#   description: "Juste somptueux",
#   price: 150,
#   user_id: User.first.id,
#   category: Item::CATEGORY[1][:name],
#   artist: "inconnu",
#   address: "46, rue de nanterre, 92600 Asnières-sur-seine"
# }
# imd = "https://bonnesoeursstore.com/wp-content/uploads/2023/05/vase-terre-cuite-naxos-s-ambiance.jpg"

# e = {
#   title: "Fauteuil Louis XVI",
#   description: "Ne convient pas à toutes les fesses",
#   price: 40,
#   user_id: User.first.id,
#   category: Item::CATEGORY[2][:name],
#   artist: "inconnu",
#   address: "5, rue erard 75012 Paris"
# }
# ime = "https://www.bolezart.com/wp-content/uploads/2022/03/Fauteuils-Depoque-Louis-XVI-1.jpg"

# f = {
#   title: "Casque de Vércingétorix",
#   description: "Parfait pour tous les maux de crâne",
#   price: 65,
#   user_id: User.first.id + 2,
#   category: Item::CATEGORY[1][:name],
#   artist: "inconnu",
#   address: "100, avenue d'argenteuil 92600 Asnières-sur-seine"
# }
# imf = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuFAtg6RAQRuPloerOjUQJ4eCzN24mzz_Wpg&usqp=CAU"

# g = {
#   title: "Pouf en antilope",
#   description: "Le confort, c'est trop fort",
#   price: 33,
#   user_id: User.first.id + 1,
#   category: Item::CATEGORY[2][:name],
#   artist: "Jimmy McSkin",
#   address: "98, boulevard voltaire 75011 Paris"
# }
# img = "https://m.media-amazon.com/images/I/61CBmU31qNL.jpg"

# h = {
#   title: "Sculpture de dieu aztèque",
#   description: "Cette sculpture impose le respect",
#   price: 211,
#   user_id: User.first.id,
#   category: Item::CATEGORY[3][:name],
#   artist: "Oropeu u' Upureo",
#   address: "4 rue bapst 92600 Asnières-sur-seine"
# }
# imh = "https://collections-mnbaq-production.s3.amazonaws.com/images/artwork/600026748/35554/size_1024/0b4b3d63ec330d185143035298fa4e32.jpg"

# i = {
#   title: "Buste de foan en émeraude",
#   description: "Préparez-vous à être éblouis",
#   price: 10_000,
#   user_id: User.last.id,
#   category: Item::CATEGORY[4][:name],
#   artist: "Balance I. Haga",
#   address: "98 boulevard malesherbes 75017 paris"
# }
# imi = "https://collections-mnbaq-production.s3.amazonaws.com/images/artwork/600026748/35554/size_1024/0b4b3d63ec330d185143035298fa4e32.jpg"

# j = {
#   title: "Topazes pas nazes",
#   description: "La scintillance à l'état pur",
#   price: 1_320,
#   user_id: User.last.id,
#   category: Item::CATEGORY[4][:name],
#   artist: "Jay R. Mess",
#   address: "108, rue Saint Honoré 75001 Paris"
# }
# imj = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8t7vDU_LgvqTHzJBF2i_UFvmgT2G1sUotIQ&usqp=CAU"

# k = {
#   title: "Les doigts de Zeus",
#   description: "La foudre dans la main",
#   price: 680,
#   user_id: User.first.id + 1,
#   category: Item::CATEGORY[3][:name],
#   artist: "Feu le sculpteur",
#   address: "51, rue de l'aigle 92250 La Garenne Colombes"
# }
# imk = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTms1PPN2P_ncXFp-wYeqUAX8jzGSpD4whd7MmLeSyLkb_z2wYaaPjifNd4IQ&s"

# l = {
#   title: "La passion de Zaya",
#   description: "Un camaïeu d'émotions en couleur",
#   price: 45,
#   user_id: User.first.id + 2,
#   category: Item::CATEGORY[0][:name],
#   artist: "Ben Z. Hemah",
#   address: "63, rue jean bonal 92250 La Garenne Colombes"
# }
# iml = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs2SYAZZYuJFVja-me9ldhaAj9QZomnqeFbA&usqp=CAU"

# m = {
#   title: "Firmament",
#   description: "Damien Dufresne est un photographe atypique. Issu des domaines très « normés » du maquillage et de la publicité, il a trouvé, dans la photographie d’art, une liberté propice à l’épanouissement de son talent",
#   price: 50,
#   user_id: User.first.id + 2,
#   category: Item::CATEGORY[5][:name],
#   artist: "Damien Dufresne",
#   address: "90 avenue des Champs Elysées 75008 Paris "
# }
# imm = "https://storage.googleapis.com/yk-cdn/photos/cusblack/damien-dufresne/firmament.jpg"


# n = {
#   title: "The Saguaro Palm Springs",
#   description: "Située dans le désert de Sonora aux Etats-Unis, la ville de Palm Spring se distingue par son architecture rétro futuriste, ses palmiers mais aussi et surtout ses piscines.",
#   price: 100,
#   user_id: User.first.id + 2,
#   category: Item::CATEGORY[5][:name],
#   artist: "Ludwig Favre",
#   address: "8 rue erik satie 94440 Santeny"
# }
# imn = "https://storage.googleapis.com/yk-cdn/photos/cusblack/ludwig-favre/the-saguaro-palm-springs.jpg"

# o = {
#   title: "Valley of the Ten Peaks",
#   description: "Considéré comme l’un des principaux photographes de paysage britanniques, Adam Burton a parcouru la planète pour capturer des environnements naturels de grande envergure et d’une beauté époustouflante.",
#   price: 500,
#   user_id: User.first.id + 1,
#   category: Item::CATEGORY[5][:name],
#   artist: "Adam Burton",
#   address: "1, rue deleau 92200 Neuilly-sur-Seine"
# }
# imo = "https://storage.googleapis.com/yk-cdn/photos/cusblack/adam-burton/valley-of-the-ten-peaks.jpg"

# items = [a, b, c, d, e, f, g, h, i, j, k, l, m, n, o]
# items_img = [ima, imb, imc, imd, ime, imf, img, imh, imi, imj, imk, iml, imm, imn, imo]
items = [b]
# items_img = [imb]

item = Item.create!(items.first)
item.photos.attach(io: File.open("app/assets/images/tableau1-resized.jpg"), filename: "#{item[:title]}.jpg", content_type: "image/jpg")

# items_img.each_with_index do |image_url, index|
#   file = URI.open(image_url)
#   item = Item.new(items[index])
#   item.photos.attach(io: file, filename: "#{item[:title]}.jpg", content_type: "image/jpg")
#   item.save
# end

puts "#{items.length} oeuvres créées"

# ------------- OLD SEED METHOD ----------------- #
# Item.create!(
  #   title: "Le radeau de la Méduse",
#   description: "Un grand tableau de maître",
#   price: 500,
#   category: Item::CATEGORY.first[:name],
#   user_id: User.first.id,
#   artist: "Théodore Géricault",
#   address: "15, rue dupin 75006 Paris"

# )

# Item.find_or_create_by!(
#   title: "Vaches dans la prairie",
#   description: "Une oeuvre très reposante",
#   price: 8,
#   user_id: User.first.id + 1,
#   category: Item::CATEGORY.first[:name],
#   artist: "Edwin Goulainger",
#   address: "31, boulevard de la republique 92250 La-Garenne-Colombes"
# )

# Item.create!(
#   title: "Bain de minuit",
#   description: "Un tableau rafraîchissant",
#   price: 12,
#   user_id: User.first.id,
#   category: Item::CATEGORY.first[:name],
#   artist: "Noémie Depain",
#   address: "15, rue d'argenteuil 75001 Paris"
# )

# Item.create!(
#   title: "Vase en terre cuite Inca",
#   description: "Juste somptueux",
#   price: 150,
#   user_id: User.first.id,
#   category: Item::CATEGORY[1][:name],
#   artist: "inconnu",
#   address: "46, rue de nanterre, 92600 Asnières-sur-seine"
# )

# Item.create!(
#   title: "Fauteuil Louis XVI",
#   description: "Ne convient pas à toutes les fesses",
#   price: 40,
#   user_id: User.first.id,
#   category: Item::CATEGORY[2][:name],
#   artist: "inconnu",
#   address: "5, rue erard 75012 Paris"
# )

# Item.create!(
#   title: "Casque de Vércingétorix",
#   description: "Parfait pour tous les maux de crâne",
#   price: 65,
#   user_id: User.first.id + 2,
#   category: Item::CATEGORY[1][:name],
#   artist: "inconnu",
#   address: "100, avenue d'argenteuil 92600 Asnières-sur-seine"
# )

# Item.create!(
#   title: "Pouf en antilope",
#   description: "Le confort, c'est trop fort",
#   price: 33,
#   user_id: User.first.id + 1,
#   category: Item::CATEGORY[2][:name],
#   artist: "Jimmy McSkin",
#   address: "98, boulevard voltaire 75011 Paris"
# )

# Item.create!(
#   title: "Sculpture de dieu aztèque",
#   description: "Cette sculpture impose le respect",
#   price: 211,
#   user_id: User.first.id,
#   category: Item::CATEGORY[3][:name],
#   artist: "Oropeu u' Upureo",
#   address: "4 rue bapst 92600 Asnières-sur-seine"
# )

# Item.create!(
#   title: "Buste de foan en émeraude",
#   description: "Préparez-vous à être éblouis",
#   price: 10_000,
#   user_id: User.last.id,
#   category: Item::CATEGORY[4][:name],
#   artist: "Balance I. Haga",
#   address: "98 boulevard malesherbes 75017 paris"
# )

# Item.create!(
#   title: "Topazes pas nazes",
#   description: "La scintillance à l'état pur",
#   price: 1_320,
#   user_id: User.last.id,
#   category: Item::CATEGORY[4][:name],
#   artist: "Jay R. Mess",
#   address: "108, rue Saint Honoré 75001 Paris"
# )

# Item.create!(
#   title: "Les doigts de Zeus",
#   description: "La foudre dans la main",
#   price: 680,
#   user_id: User.first.id + 1,
#   category: Item::CATEGORY[3][:name],
#   artist: "Feu le sculpteur",
#   address: "51, rue de l'aigle 92250 La Garenne Colombes"
# )

# Item.create!(
#   title: "La passion de Zaya",
#   description: "Un camaïeu d'émotions en couleur",
#   price: 45,
#   user_id: User.first.id + 2,
#   category: Item::CATEGORY[0][:name],
#   artist: "Ben Z. Hemah",
#   address: "63, rue jean bonal 92250 La Garenne Colombes"
# )
