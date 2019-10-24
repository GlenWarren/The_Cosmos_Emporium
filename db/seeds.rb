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
  "Eat the fat cats food sleep in the bathroom sink, so destroy the blinds howl on top of tall thing. Rub whiskers on bare skin act innocent attack the child but play time. Push your water glass on the floor please stop looking at your phone and pet me show belly or if it fits i sits but fight own tail swat at dog. Annoy the old grumpy cat, start a fight and then retreat to wash when i lose small kitty warm kitty little balls of fur sniff all the things.",
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pretium nibh ipsum consequat nisl vel pretium lectus quam. Turpis cursus in hac habitasse.",
  "Cupcake ipsum dolor sit amet danish danish cake ice cream. Tart powder sweet. Macaroon gummies chupa chups topping cookie. Lemon drops toffee brownie danish powder. Dragée cupcake candy halvah bear claw pie macaroon. Toffee dragée sweet pudding apple pie jelly bear claw lemon drops icing. Chocolate cake candy canes candy sugar plum marzipan bear claw marzipan chocolate cake.",
  "Pie tootsie roll toffee candy canes. Chocolate bar oat cake cheesecake icing tiramisu apple pie. Ice cream bear claw ice cream ice cream. Toffee pie lemon drops wafer. Gummi bears candy canes bonbon jelly-o topping bear claw bear claw sweet. Ice cream lemon drops bear claw. Cheesecake candy powder.",
  "Bocconcini lancashire cheesy grin. Cheddar pecorino cheese slices pecorino fromage frais stilton rubber cheese cheeseburger. Swiss the big cheese cheeseburger red leicester lancashire mascarpone croque monsieur cheese on toast. Boursin cheddar cow port-salut manchego."
  ]

planet_images = %w(https://res.cloudinary.com/glenwarren/image/upload/v1571933520/aj7nwqvitr6inflw3pks.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933516/j507jwm1qqjdzjx6wcfz.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933508/hnxjbnqcowc2k9k6xs2l.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933485/z7jli6cc7xmh2t67wetx.png https://res.cloudinary.com/glenwarren/image/upload/v1571933512/wtbxod1prjg7k793teil.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933503/jz68kio7coeo5v5d0fph.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933495/qgrg5rx0gfihhyd9nrux.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933520/aj7nwqvitr6inflw3pks.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933516/j507jwm1qqjdzjx6wcfz.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933508/hnxjbnqcowc2k9k6xs2l.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933485/z7jli6cc7xmh2t67wetx.png)

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

star_images = %w(https://res.cloudinary.com/glenwarren/image/upload/v1571933717/nwztm2msoqlnuzstxp1h.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933722/bay9rfhg5gxco0splu38.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933729/sktbajgxd6avewzrp6j6.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933734/iffekyholvlc4idlzogo.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933738/vfybsmnf7rip6d14onjm.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933706/mgufp88xgewkbf67mqif.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933712/flxohlamyu9s6aewlero.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933722/bay9rfhg5gxco0splu38.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933729/sktbajgxd6avewzrp6j6.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933734/iffekyholvlc4idlzogo.jpg)

%w(Sriracha Peri-peri George X1 X2 X3 Fluffy Spike Hot-one Frank).each do |n|
  Product.create(
    category: Category.find_by(name: "Stars"),
    name: n,
    description: descriptions.sample,
    image: star_images.pop,
    price: rand(2450..98408858),
    availability: date.sample
  )
end

moon_images = %w(https://res.cloudinary.com/glenwarren/image/upload/v1571933299/l8tzzrd9zuxatoc5xlmt.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933309/u4svypkcwvofrvp6vnl6.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933304/k1usdere2ap7urun5ba2.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933299/l8tzzrd9zuxatoc5xlmt.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933309/u4svypkcwvofrvp6vnl6.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933304/k1usdere2ap7urun5ba2.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933299/l8tzzrd9zuxatoc5xlmt.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933309/u4svypkcwvofrvp6vnl6.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933304/k1usdere2ap7urun5ba2.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933299/l8tzzrd9zuxatoc5xlmt.jpg)

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

black_images = %w(https://res.cloudinary.com/glenwarren/image/upload/v1571932738/sefujtwosu6oxx9gbyat.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571932860/e17zn5jletxchsvckrpe.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571932898/gtj8yza3lbiua5uhj5hf.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571932905/ekbbf3mzuv7rqd9b4pad.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571932910/z0cy0zo3xumzg4ei40k1.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571932915/h5oivjpyvfhmmytwvnyb.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571932738/sefujtwosu6oxx9gbyat.jpg)

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

debris_images = %w(https://res.cloudinary.com/glenwarren/image/upload/v1571933069/mwpbasxva8sr8q2iote1.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933049/aysiyhil9tyejzyhcbwm.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933044/htsjxi1grrkuvz8ru3tj.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933082/pz2cvkhheddvjutc4hot.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933034/reqapujuorp8wwh7or6c.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933060/tyizfor8znukfqq3yztp.jpg https://res.cloudinary.com/glenwarren/image/upload/v1571933075/uqomuku48npidh1usyjs.jpg)

["30 Mixed Bundle", "5 Meteoroids", "5 Asteroids", "5 Comets", "Asteroid", "Comet", "Meteoroid"].each do |n|
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

Product.all.sample(8).each do |prod|
  prod.homepage = true
  prod.save
end

SubCategory.all.sample(6).each do |s|
  s.homepage = true
  s.save
end
