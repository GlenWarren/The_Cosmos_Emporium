puts 'Cleaning database of all filters...'
Filter.destroy_all
puts 'Cleaning database of all order_items...'
OrderItem.destroy_all
puts 'Cleaning database of all products...'
Product.destroy_all
puts 'Cleaning database of all sub_categories...'
SubCategory.destroy_all
puts 'Cleaning database of all categories...'
Category.destroy_all
puts 'Cleaning database of all orders...'
Order.destroy_all
puts 'Cleaning database of all users...'
User.destroy_all

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

%w(Asteroid Comet Meteoroid Weaponised Explosive).each do |a|
  SubCategory.create(
    category: Category.find_by(name: "Debris"),
    name: a
  )
end

puts 'Initiating products seed...'

descriptions = [
  "Strike colors run a shot across the bow black jack pinnace Spanish Main aft Plate Fleet lateen sail. Swab measured fer yer chains poop deck provost fathom list execution dock run a rig. Heave to boatswain Yellow Jack rope's end yard coxswain gally scourge of the seven seas.",
  "Tender loot Pieces of Eight fore aft parley Pirate Round pink hogshead. Me crow's nest lad lugsail spirits galleon Spanish Main shrouds boatswain. Scuttle cog smartly fathom Jack Tar rigging ye coxswain topsail. Run a rig dead men tell no tales swing the lead lanyard sloop cackle fruit pirate schooner keel. Warp keel swab bilge water gibbet run a shot across the bow belay mutiny careen. Davy Jones' Locker dance the hempen jig deadlights American Main scourge of the seven seas Chain Shot interloper dead men tell no tales belaying pin. Code of conduct shrouds quarter deadlights bucko squiffy poop deck Nelsons folly Letter of Marque.",
  "Realm of the galaxies circumnavigated globular star cluster hydrogen atoms Orion's sword something incredible is waiting to be known. Rich in heavy atoms Euclid gathered by gravity tingling of the spine venture as a patch of light. The only home we've ever known bits of moving fluff vanquish the impossible as a patch of light dispassionate extraterrestrial observer dream of the mind's eye. A still more glorious dawn awaits invent the universe bits of moving fluff the carbon in our apple pies from which we spring courage of our questions and billions upon billions upon billions upon billions upon billions upon billions upon billions.",
  "Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit​​, morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium. Qui animated corpse, cricket bat max brucks terribilem incessu zomby. The voodoo sacerdos flesh eater, suscitat mortuos comedere carnem virus.",
  "Eat the fat cats food sleep in the bathroom sink, so destroy the blinds howl on top of tall thing. Rub whiskers on bare skin act innocent attack the child but play time. Push your water glass on the floor please stop looking at your phone and pet me show belly or if it fits i sits but fight own tail swat at dog. Annoy the old grumpy cat, start a fight and then retreat to wash when i lose small kitty warm kitty little balls of fur sniff all the things."
  ]

planet_images = %w(planet_1.png planet_2.jpeg planet_3.jpg planet_4.jpg planet_5.jpg planet_6.jpg planet_1.png planet_2.jpeg planet_3.jpg planet_4.jpg planet_5.jpg)

date = %w(23/11/2024 12/01/2021 06/08/2023 30/04/2045)

%w(Clive GDW506 Polly Juan Planet8576001917 Strawberry-fields Enrique Sanchez Bobo Plastic Goldie).each do |n|
  Product.create(
    category: Category.find_by(name: "Planets"),
    name: n,
    description: descriptions.sample,
    image: planet_images.pop,
    price: rand(245..98458),
    availability: date.sample
  )
end

star_images = %w(star_1.jpeg star_2.jpg star_3.jpg star_4.jpeg star_5.jpg star_6.jpeg star_7.jpeg star_2.jpg star_3.jpg star_4.jpeg)

%w(George X1 X2 X3 Fluffy Spike Hot-one Sriracha Peri-peri Frank).each do |n|
  Product.create(
    category: Category.find_by(name: "Stars"),
    name: n,
    description: descriptions.sample,
    image: star_images.pop,
    price: rand(2450..98408858),
    availability: date.sample
  )
end

moon_images = %w(moon_1.jpeg moon_2.jpeg moon_3.jpeg moon_1.jpeg moon_2.jpeg moon_3.jpeg moon_1.jpeg moon_2.jpeg moon_3.jpeg moon_1.jpeg)

%w(Mario Wallace Quentin Roundy Spicy Svën Byörk Quadrant-7-Moon Area52 Jupiter-Moon).each do |n|
  Product.create(
    category: Category.find_by(name: "Moons"),
    name: n,
    description: descriptions.sample,
    image: moon_images.pop,
    price: rand(50..9846),
    availability: date.sample
  )
end

black_images = %w(black_1.jpeg black_2.jpg black_3.jpg black_4.jpg black_5.jpg black_6.jpg black_1.jpeg)

%w(APM-08279+5255 Holey S5-0014+81 4C-+37.11 1ES-2344+514 HE0450-2958 PKS-0548-322).each do |n|
  Product.create(
    category: Category.find_by(name: "Black Holes"),
    name: n,
    description: descriptions.sample,
    image: black_images.pop,
    price: rand(2453450..98408858),
    availability: date.sample
  )
end

debris_images = %w(debris_1.jpg debris_2.jpg debris_3.jpg debris_4.jpeg debris_5.jpg debris_6.jpeg debris_7.jpg)

["30 Mixed Bundle", "5 Meteoroids", "5 Asteroids", "5 Meteors", "Asteroid", "Comet", "Meteoroid"].each do |n|
  Product.create(
    category: Category.find_by(name: "Debris"),
    name: n,
    description: descriptions.sample,
    image: debris_images.pop,
    price: rand(50..9854),
    availability: date.sample
  )
end

puts 'Initiating filters seed...'

Product.where(category: Category.find_by(name: "Planets")).each do |prod|
  Filter.create(
    product: prod,
    sub_category: SubCategory.find_by(name: %w(Life-supporting Not-life-supporting H2O-present).sample)
  )
  Filter.create(
    product: prod,
    sub_category: SubCategory.find_by(name: %w(Dwarf Terrestrial Gas Ice Giant).sample)
  )
end

Product.where(category: Category.find_by(name: "Stars")).each do |prod|
  Filter.create(
    product: prod,
    sub_category: SubCategory.find_by(name: %w(Sun Non-sun).sample)
  )
  Filter.create(
    product: prod,
    sub_category: SubCategory.find_by(name: %w(T-Tauri Main-sequence Red-giant White-dwarf Red-dwarf Neutron Supergiant).sample)
  )
end

Product.where(category: Category.find_by(name: "Moons")).each do |prod|
  Filter.create(
    product: prod,
    sub_category: SubCategory.find_by(name: %w(Cheddar Camembert Red-leicester Wensleydale).sample)
  )
  Filter.create(
    product: prod,
    sub_category: SubCategory.find_by(name: %w(Mozzarella Gorgonzola Feta Melted).sample)
  )
end

Product.where(category: Category.find_by(name: "Black Holes")).each do |prod|
  Filter.create(
    product: prod,
    sub_category: SubCategory.find_by(name: %w(Stellar Supermassive Intermediate).sample)
  )
end

Product.where(category: Category.find_by(name: "Debris")).each do |prod|
  Filter.create(
    product: prod,
    sub_category: SubCategory.find_by(name: %w(Weaponised Explosive).sample)
  )
  Filter.create(
    product: prod,
    sub_category: SubCategory.find_by(name: %w(Asteroid Comet Meteoroid).sample)
  )
end
