# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database of all categories...'
Category.destroy_all
puts 'Cleaning database of all sub_categories...'
SubCategory.destroy_all
puts 'Cleaning database of all products...'
Product.destroy_all
puts 'Cleaning database of all users...'
User.destroy_all
puts 'Cleaning database of all orders...'
Order.destroy_all

puts 'Initiating users seed...'

avatars = "https://kitt.lewagon.com/placeholder/users/random"

User.create(
  email: "amine@gmail.com",
  password: "password",
  # username: "Amine",
  # remote_avatar_url: avatars
)

User.create(
  email: "mehdi@gmail.com",
  password: "password",
  # username: "Mehdi",
  # remote_avatar_url: avatars
)

User.create(
  email: "glen@gmail.com",
  password: "password",
  # username: "Glen",
  # remote_avatar_url: avatars
)

User.create(
  email: "wendela@gmail.com",
  password: "password",
  # username: "Wendela",
  # remote_avatar_url: avatars
)

puts 'Initiating categories seed...'

Category.create(
  name: "Planets"
)

Category.create(
  name: "Stars"
)

Category.create(
  name: "Moons"
)

Category.create(
  name: "Black Holes"
)

Category.create(
  name: "Debris"
)

puts 'Initiating sub_categories seed...'

%w(Life-supporting Not-life-supporting H2O-present Dwarf Terrestrial Gas Ice Giant).each do |a|
  SubCategory.create(
    category: Category.find_by(name: "Planets"),
    name: a
  )
end

%w(Sun Non-sun T-Tauri Main-sequence Red-giant White-dwarf Red-dwarf Neutron Supergiant).each do |a|
  SubCategory.create(
    category: Category.find_by(name: "Stars"),
    name: a
  )
end

%w(Cheddar Camembert Red-leicester Wensleydale Mozzarella Gorgonzola Feta Melted).each do |a|
  SubCategory.create(
    category: Category.find_by(name: "Moons"),
    name: a
  )
end

%w(Stellar Supermassive Intermediate).each do |a|
  SubCategory.create(
    category: Category.find_by(name: "Black Holes"),
    name: a
  )
end

%w(Asteroid Comet Meteor Weaponsised).each do |a|
  SubCategory.create(
    category: Category.find_by(name: "Debris"),
    name: a
  )
end

puts 'Initiating products seed...'

planet_images = %w(planet_1.png planet_2.jpeg planet_3.jpg planet_4.jpg planet_5.jpg planet_6.jpg)

date = %w(Now 23/11/2024 12/01/21 Now Now)

%w(Clive GDW506 Polly Juan Planet8576001917 Strawberry-fields Enrique Sanchez Bobo Plastic Goldie).each do |n|
  Product.create(
    category: Category.find_by(name: "Planets"),
    name: n,
    description: "Strike colors run a shot across the bow black jack pinnace Spanish Main aft Plate Fleet lateen sail. Swab measured fer yer chains poop deck provost fathom list execution dock run a rig. Heave to boatswain Yellow Jack rope's end yard coxswain gally scourge of the seven seas.",
    image: planet_images.sample,
    price: rand(245..98458),
    availability: date.sample
  )
end




puts 'Initiating filters seed...'
