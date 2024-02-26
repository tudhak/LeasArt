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
  email: "ludo.belec@yahoo.com",
  password: "password123",
  first_name: "Ludovic",
  last_name: "Belec",
  description: "Je suis un amateur d'art d'une trentaine d'années vivant en région parisienne."
)

User.create!(
  email: "sophie.kasabian@aol.com",
  password: "password456",
  first_name: "Sophie",
  last_name: "Kasabian",
  description: "Je travaille dans le monde de la mode et je suis toujours à la recherche de nouvelles oeuvres à exposer à mon domicile."
)

User.create!(
  email: "dimitri.lourdev@gmail.com",
  password: "password789",
  first_name: "Dimitri",
  last_name: "Lourdev",
  description: "Je sillonne les musées et les expositions en quête de beau."
)

User.create!(
  email: "yvonneplanquet@wanadoo.fr",
  password: "secret",
  first_name: "Yvonne",
  last_name: "Planquet",
  description: "Actuellement à la retraite, je suis férue d'oeuvres d'art."
)

#---------------- Items generation -----------------------
puts "Creating items..."
art1 = {
  title: "Transition",
  description: "A tangy canvas, full of life, which gives many indications on the painter's artistic approach.",
  price: 65,
  category: Item::CATEGORY.first[:name],
  user_id: User.first.id,
  artist: "Timothey Laughn",
  address: "15, rue dupin 75006 Paris"
}
img1 = "app/assets/images/tableau2-resized.jpg"

art2 = {
  title: "Fallen sky",
  description: "Another stunning artwork by Edwin which truly captures the immensity of the world and fosters viewers' introspection.",
  price: 22,
  user_id: User.first.id + 1,
  category: Item::CATEGORY.first[:name],
  artist: "Edwin Goulainger",
  address: "31, boulevard de la republique 92250 La-Garenne-Colombes"
}
img2 = "app/assets/images/tableau1-resized.jpg"

art3 = {
  title: "Velvet shutters",
  description: "A colorful work that catches the eye, with a bias towards the choice of materials.",
  price: 12,
  user_id: User.first.id,
  category: Item::CATEGORY.first[:name],
  artist: "Eve D. Kim",
  address: "15, rue d'argenteuil 75001 Paris"
}
img3 = "app/assets/images/tableau3-resized.jpg"

art4 = {
  title: "Competing shores",
  description: "An esoteric representation of the forces of nature in a myriad of colors.",
  price: 36,
  user_id: User.first.id,
  category: Item::CATEGORY.first[:name],
  artist: "Kaylee Winsbourgh",
  address: "46, rue de nanterre, 92600 Asnières-sur-seine"
}
img4 = "app/assets/images/tableau4-resized.jpg"

art5 = {
  title: "Another oppressive doubt",
  description: "As its name suggests, it is impossible to remain unmoved by this superbly executed work.",
  price: 40,
  user_id: User.first.id,
  category: Item::CATEGORY.first[:name],
  artist: "KGLRF+00",
  address: "5, rue erard 75012 Paris"
}
img5 = "app/assets/images/tableau5-resized.jpg"

art6 = {
  title: "Ancient times",
  description: "A photograph bathed in classicism and imbued with certain know-how.",
  price: 35,
  user_id: User.first.id + 2,
  category: Item::CATEGORY[5][:name],
  artist: "Saylee Arwaagh",
  address: "100, avenue d'argenteuil 92600 Asnières-sur-seine"
}
img6 = "app/assets/images/photo1-resized.jpg"

art7 = {
  title: "Exotic sunset",
  description: "
  A photograph by Kapoor Awalsh that transports you and reconnects you to mother earth.",
  price: 19,
  user_id: User.first.id + 1,
  category: Item::CATEGORY[5][:name],
  artist: "Kapoor Awalsh",
  address: "98, boulevard voltaire 75011 Paris"
}
img7 = "app/assets/images/photo2-resized.jpg"

art8 = {
  title: "Wise man",
  description: "This head superbly sculpted according to the precepts of ancient art invites the questioning of established principles.",
  price: 211,
  user_id: User.first.id,
  category: Item::CATEGORY[3][:name],
  artist: "Ostakios Problotis",
  address: "4 rue bapst 92600 Asnières-sur-seine"
}
img8 = "app/assets/images/sculpture1-resized.jpg"

art9 = {
  title: "Bronze beef",
  description: "A strikingly realistic sculpture, made from exceptional materials by a young rising artist.",
  price: 642,
  user_id: User.last.id,
  category: Item::CATEGORY[3][:name],
  artist: "Akwele Dianga",
  address: "98 boulevard malesherbes 75017 paris"
}
img9 = "app/assets/images/sculpture2-resized.jpg"

art10 = {
  title: "Armchair #26",
  description: "A unique armchair from the brand new collection of the essential master of Italian style.",
  price: 920,
  user_id: User.last.id,
  category: Item::CATEGORY[2][:name],
  artist: "Giorgio Pozzaletto",
  address: "108, rue Saint Honoré 75001 Paris"
}
img10 = "app/assets/images/furniture1-resized.jpg"

art11 = {
  title: "Iconic leather sofa",
  description: "A piece that needs no introduction, which can alone dress up your room and provide you with absolute comfort.",
  price: 1390,
  user_id: User.first.id + 1,
  category: Item::CATEGORY[2][:name],
  artist: "McTerrance Furniture Inc.",
  address: "51, rue de l'aigle 92250 La Garenne Colombes"
}
img11 = "app/assets/images/furniture2-resized.jpg"

art12 = {
  title: "Collection of modern vases",
  description: "Ideal for reviving any of your rooms, these vases will adapt to any atmosphere, with the most absolute discretion.",
  price: 45,
  user_id: User.first.id + 2,
  category: Item::CATEGORY[1][:name],
  artist: "McTerrance Furniture Inc.",
  address: "63, rue jean bonal 92250 La Garenne Colombes"
}
img12 = "app/assets/images/decoration1-resized.jpg"

art13 = {
  title: "Trio of French handmade pillows",
  description: "Known throughout the world, the French Cushion company comes to your home, to bring you good taste, good manners and good comfort.",
  price: 29,
  user_id: User.first.id + 2,
  category: Item::CATEGORY[1][:name],
  artist: "Le coussin Français",
  address: "90 avenue des Champs Elysées 75008 Paris"
}
img13 = "app/assets/images/decoration2-resized.jpg"

art14 = {
  title: "Prime Golden bracelets",
  description: "Sherazad shows us once again that sophistication can rhyme with exquisite detail yet simplicity.",
  price: 29,
  user_id: User.first.id + 2,
  category: Item::CATEGORY[4][:name],
  artist: "Sherazad creations",
  address: "98 rue du Dôme, 92100 Boulogne-Billancourt"
}
img14 = "app/assets/images/jewels2-resized.jpg"

art15 = {
  title: "The massive ring",
  description: "Impress your peers with this stunning ring that will make your hands shine brightly.",
  price: 29,
  user_id: User.first.id + 2,
  category: Item::CATEGORY[4][:name],
  artist: "Sherazad creations",
  address: "65 avenue de Paris 94300 Vincennes"
}
img15 = "app/assets/images/jewels1-resized.jpg"

items = [art1, art2, art3, art4, art5, art6, art7, art8, art9, art10, art11, art12, art13, art14, art15]
items_img = [img1, img2, img3, img4, img5, img6, img7, img8, img9, img10, img11, img12, img13, img14, img15]

items_img.each_with_index do |img_path, index|
  item = Item.new(items[index])
  file = File.open(img_path)
  item.photos.attach(io: file, filename: "#{item[:title]}.jpg", content_type: "image/jpg")
  item.save
end

puts "#{items.length} oeuvres créées."

# ------------- SEED METHOD #1 ----------------- #
# Item.create!(
#   title: "Le radeau de la Méduse",
#   description: "Un grand tableau de maître",
#   price: 500,
#   category: Item::CATEGORY.first[:name],
#   user_id: User.first.id,
#   artist: "Théodore Géricault",
#   address: "15, rue dupin 75006 Paris"
# )
