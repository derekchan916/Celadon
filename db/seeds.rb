# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'byebug'
ActiveRecord::Base.transaction do
  product = {
    "1"=>{
      "name"=>"Bulbasaur",
      "attack"=>49,
      "defense"=>49,
      "description"=>"Bulbasaur is a small, quadruped Pokémon with green to bluish-green skin and darker green patches. It has red eyes with white pupils and sclera and pointed, ear-like structure on top of its head. Its snout is short and blunt, and it has a wide mouth. A pair of small, pointed teeth visible in the upper jaw when its mouth is open. Each of its thick legs ends with three sharp claws. On its back is a green plant bulb, which is grown from a seed planted there at birth. The bulb provides it with energy through photosynthesis as well as from the nutrient-rich seeds contained within. As mentioned in the anime, starter Pokémon are raised by Breeders to be distributed to new Trainers. Having been domesticated from birth, Bulbasaur is regarded as both a rare and well-behaved Pokémon. It is known to be extremely loyal, even after long-term abandonment. Bulbasaur has also shown itself to be an excellent caretaker, even having a special technique called the Bulba-by. To perform this technique, Bulbasaur uses its vines to pick up a young Pokémon and soothingly rocks the young one in the air. It is found in grasslands and forests throughout the Kanto region. However, due to Bulbasaur's status as starter Pokémon, it is hard to come by in the wild and generally found under the ownership of a Trainer. It has been observed that a Bulbasaur's bulb will flash blue when it is ready to evolve. If it does not want to evolve, it struggles to resist the transformation. Many Bulbasaur gather every year in a hidden garden in Kanto to become Ivysaur in a ceremony led by a Venusaur.",
      "categories"=>["grass", "poison"],
      "moves"=>[
         "tackle",
         "vine whip"
      ],
      "evolution"=>"Ivysaur"
    },
    "2"=>{
      "name"=>"Ivysaur",
      "attack"=>62,
      "defense"=>63,
      "description"=>"Ivysaur is a quadruped Pokémon similar to a dinosaur. It has blue-green skin with darker patches. Two pointed teeth protrude from its upper jaw, and it has narrow red to purple eyes. On top of its head are pointed ears with black inside. It has a short, rounded snout with a wide mouth. Each of its feet have three claws on them. The bulb on its back has bloomed into a large pink bud. A short brown trunk surrounded by leafy green fronds supports the bud. The weight of this bud prevents Ivysaur from standing on its hind legs and forces its legs to grow sturdy. When its plant is ready to bloom, it gives off a distinct, strong sweet-smelling aroma and starts swelling. Ivysaur will also start spending more time in sunlight in preparation for its upcoming evolution. Exposure to sunlight adds to the strength of both Ivysaur and its plant. Ivysaur's natural habitat is plains. However, it is rare, as many are in captivity.",
      "categories"=>["grass", "poison"],
      "moves"=>[
         "tackle",
         "vine whip",
         "razor leaf"
      ],
      "evolution"=>"Venusaur"
    },
    "3"=>{
      "name"=>"Venusaur",
      "attack"=>82,
      "defense"=>83,
      "description"=>"Venusaur is a squat, quadruped Pokémon with bumpy, bluish green skin. It has small, circular red eyes, a short, blunt snout, and a wide mouth with two pointed teeth in the upper jaw, and four pointed teeth in the lower jaw. On top of its head are small, pointed ears with reddish pink insides. It has three clawed toes on each foot. The bud on its back has bloomed in a large pink, white-spotted flower. The flower is supported by a thick, brown trunk surrounded by green fronds. A female Venusaur will have a seed in the center of its flower.",
      "categories"=>["grass", "poison"],
      "moves"=>[
         "tackle",
         "vine whip",
         "razor leaf"
      ],
    },
    "4"=>{
      "name"=>"Charmander",
      "attack"=>52,
      "defense"=>43,
      "description"=>"Charmander is a bipedal, reptilian Pokémon with an orange body, though its underside and soles are cream-colored. It has two small fangs visible in its upper and lower jaws and blue eyes. Its arms and legs are short with four fingers and three clawed toes. A fire burns at the tip of this Pokémon’s slender tail, and has blazed there since Charmander’s birth. The flame can be used as an indication of Charmander's health and mood, burning brightly when the Pokémon is strong, weakly when it is exhausted, wavering when it is happy, and blazing when it is enraged. It is said that Charmander dies if its flame goes out. Charmander can be found in hot, mountainous areas. However, it is found far more often in the ownership of Trainers. As shown in Pokémon Snap, Charmander exhibits pack behavior, calling others of its species if it finds food.",
      "categories"=>["fire"],
      "moves"=>[
         "scratch",
         "ember",
         "growl"
      ],
      "evolution"=>"Charmeleon"
    },
    "5"=>{
      "name"=>"Charmeleon",
      "attack"=>64,
      "defense"=>58,
      "description"=>"Charmeleon is a bipedal, reptilian creature. It has crimson scales and a cream underside. There is a horn-like protrusion on the back of its head, and it has narrow green eyes and a long snout. It has relatively long arms with three sharp claws. Its short legs have feet with three claws and cream-colored soles. The tip of its long, powerful tail has a flame burning on it. The temperature rises to unbearable levels if Charmeleon swings its tail. Charmeleon has a vicious nature and will constantly seek out opponents. Strong opponents excite this Pokémon, causing it to spout bluish-white flames that torch its surroundings. However, it will relax once it has won. It is rare in the wild, but it can be found in mountainous areas.",
      "categories"=>["fire"],
      "moves"=>[
         "scratch",
         "ember",
         "growl",
         "flamethrower"
      ],
      "evolution"=>"Charizard"
    },
    "6"=>{
      "name"=>"Charizard",
      "attack"=>84,
      "defense"=>78,
      "description"=>"Charizard is a draconic, bipedal Pokémon. It is primarily orange with a cream underside from the chest to the tip of its tail, which burns with a sizable flame. Charizard has a long neck, small blue eyes, raised nostrils, and two blunt horns protruding from the back of its rectangular head. There are two fangs visible in the upper jaw when its mouth is closed. Two large wings with teal undersides sprout from its back, and a horn-like appendage juts out from the third joint of each wing. Charizard's arms are short and skinny compared to its robust belly, and each limb has three white claws. It has stocky legs and cream-colored soles under its feet.",
      "categories"=>["fire", "flying"],
      "moves"=>[
         "flamethrower",
         "wing attack",
         "slash",
         "fly"
      ],
    },
    "7"=>{
      "name"=>"Squirtle",
      "attack"=>48,
      "defense"=>65,
      "description"=>"Squirtle is a small Pokémon that resembles a light blue turtle. While it typically walks on its two short legs, it has been shown to run on all fours in Super Smash Bros. Brawl. It has large brown eyes and a slightly hooked upper lip. Each of its hands and feet have three pointed digits. The end of its long tail curls inward. Its body is encased by a tough shell that forms and hardens after birth. This shell is brown on the top, pale yellow on the bottom, and has a thick white ridge between the two halves. Squirtle's shell is a useful tool. It can withdraw into the shell for protection or for sleeping, and its grooved, rounded shape helps to reduce water resistance when this Pokémon swims. Squirtle can spray foamy water from its mouth with great accuracy. Squirtle is scarce in the wild, although it can be found around small ponds and lakes. The anime has shown that it can be found living on secluded islands with other members of its evolutionary line.",
      "categories"=>["water"],
      "moves"=>[
         "tackle",
         "bubble",
         "water gun"
      ],
      "evolution"=>"Wartortle"
    },
    "8"=>{
      "name"=>"Wartortle",
      "attack"=>63,
      "defense"=>80,
      "description"=>"Wartortle is a bipedal, indigo-blue Pokémon similar to a turtle. It has brown eyes, a dark blue streak on each cheek, and two sharp teeth protruding from its upper jaw. It has three clawed fingers and pointed toes. Bluish white fur covers its long ears and tail. A brown shell with a pale yellow underside encases its body. A thick, white rim separates the upper and lower halves of the shell. As Wartortle grows old, its tail fur will darken, and it may have algae growing on its shell. The shell may also carry scars from past battles. To maintain balance while swimming at high speeds, Wartortle moves its furry ears and tail. It can use the fur to store air for extended underwater diving. Its tail is a popular symbol of longevity, making it popular with the elderly. It hides in water when hunting and emerges to surprise its prey. The anime has shown that Wartortle can be found living in colonies on islands, but its preferred habitat seems to be freshwater ponds and lakes.",
      "categories"=>["water"],
      "moves"=>[
         "tackle",
         "bubble",
         "water gun",
         "bite"
      ],
      "evolution"=>"Blastoise"
    },
    "9"=>{
      "name"=>"Blastoise",
      "attack"=>83,
      "defense"=>100,
      "description"=>"Blastoise is a large, bipedal tortoise-like Pokémon. Its body is dark blue and is mostly hidden by its tough, brown shell. This shell has a pale yellow underside and a white ridge between the upper and lower halves, which also encircles the arms. Two powerful water cannons reside in the top sides of its shell. These cannons can be extended or withdrawn and can be used to assist in high-speed charges. Blastoise's head has triangular ears which are black on the inside, small brown eyes, and a cream-colored lower jaw. Its arms are thick and striated with three claws on each hand. Its feet have three claws on the front and one on the back. It has a stubby tail.",
      "categories"=>["water"],
      "moves"=>[
         "hydro pump",
         "bubble",
         "water gun",
         "bite"
      ],
    },
  }

  moves = [
    ["absorb","grass"],
    ["acid","poison"],
    ["acid armor","poison"],
    ["agility","psychic"],
    ["amnesia","psychic"],
    ["aurora beam","ice"],
    ["barrage","normal"],
    ["barrier","psychic"],
    ["bide","normal"],
    ["bind","normal"],
    ["bite","dark"],
    ["blizzard","ice"],
    ["body slam","normal"],
    ["bone club","ground"],
    ["bonemerang","ground"],
    ["bubble","water"],
    ["bubble beam","water"],
    ["clamp","water"],
    ["comet punch","normal"],
    ["confuse ray","ghost"],
    ["confusion","psychic"],
    ["constrict","normal"],
    ["conversion","normal"],
    ["counter","fighting"],
    ["crabhammer","water"],
    ["cut","normal"],
    ["defense curl","normal"],
    ["dig","ground"],
    ["disable","normal"],
    ["dizzy punch","normal"],
    ["double kick","fighting"],
    ["double slap","normal"],
    ["double team","normal"],
    ["double-edge","normal"],
    ["dragon rage","dragon"],
    ["dream eater","psychic"],
    ["drill peck","flying"],
    ["earthquake","ground"],
    ["egg bomb","normal"],
    ["ember","fire"],
    ["explosion","normal"],
    ["fire blast","fire"],
    ["fire punch","fire"],
    ["fire spin","fire"],
    ["fissure","ground"],
    ["flamethrower","fire"],
    ["flash","normal"],
    ["fly","flying"],
    ["focus energy","normal"],
    ["fury attack","normal"],
    ["fury swipes","normal"],
    ["glare","normal"],
    ["growl","normal"],
    ["growth","normal"],
    ["guillotine","normal"],
    ["gust","flying"],
    ["harden","normal"],
    ["haze","ice"],
    ["headbutt","normal"],
    ["high jump kick","fighting"],
    ["horn attack","normal"],
    ["horn drill","normal"],
    ["hydro pump","water"],
    ["hyper beam","normal"],
    ["hyper fang","normal"],
    ["hypnosis","psychic"],
    ["ice beam","ice"],
    ["ice punch","ice"],
    ["jump kick","fighting"],
    ["karate chop","fighting"],
    ["kinesis","psychic"],
    ["leech life","bug"],
    ["leech seed","grass"],
    ["leer","normal"],
    ["lick","ghost"],
    ["light screen","psychic"],
    ["lovely kiss","normal"],
    ["low kick","fighting"],
    ["meditate","psychic"],
    ["mega drain","grass"],
    ["mega kick","normal"],
    ["mega punch","normal"],
    ["metronome","normal"],
    ["mimic","normal"],
    ["minimize","normal"],
    ["mirror move","flying"],
    ["mist","ice"],
    ["night shade","ghost"],
    ["pay day","normal"],
    ["peck","flying"],
    ["petal dance","grass"],
    ["pin missile","bug"],
    ["poison gas","poison"],
    ["poison powder","poison"],
    ["poison sting","poison"],
    ["pound","normal"],
    ["psybeam","psychic"],
    ["psychic","psychic"],
    ["psywave","psychic"],
    ["quick attack","normal"],
    ["rage","normal"],
    ["razor leaf","grass"],
    ["razor wind","normal"],
    ["recover","normal"],
    ["reflect","psychic"],
    ["rest","psychic"],
    ["roar","normal"],
    ["rock slide","rock"],
    ["rock throw","rock"],
    ["rolling kick","fighting"],
    ["sand attack","ground"],
    ["scratch","normal"],
    ["screech","normal"],
    ["seismic toss","fighting"],
    ["self-destruct","normal"],
    ["sharpen","normal"],
    ["sing","normal"],
    ["skull bash","normal"],
    ["sky attack","flying"],
    ["slam","normal"],
    ["slash","normal"],
    ["sleep powder","grass"],
    ["sludge","poison"],
    ["smog","poison"],
    ["smokescreen","normal"],
    ["soft-boiled","normal"],
    ["solar beam","grass"],
    ["sonic boom","normal"],
    ["spike cannon","normal"],
    ["splash","normal"],
    ["spore","grass"],
    ["stomp","normal"],
    ["strength","normal"],
    ["string shot","bug"],
    ["struggle","normal"],
    ["stun spore","grass"],
    ["submission","fighting"],
    ["substitute","normal"],
    ["super fang","normal"],
    ["supersonic","normal"],
    ["surf","water"],
    ["swift","normal"],
    ["swords dance","normal"],
    ["tackle","normal"],
    ["tail whip","normal"],
    ["take down","normal"],
    ["teleport","psychic"],
    ["thrash","normal"],
    ["thunder","electric"],
    ["thunder punch","electric"],
    ["thunder shock","electric"],
    ["thunder wave","electric"],
    ["thunderbolt","electric"],
    ["toxic","poison"],
    ["transform","normal"],
    ["tri attack","normal"],
    ["twineedle","bug"],
    ["vice grip","normal"],
    ["vine whip","grass"],
    ["water gun","water"],
    ["waterfall","water"],
    ["whirlwind","normal"],
    ["wing attack","flying"],
    ["withdraw","water"]
  ]
  #CREATING PRODUCTS
  product.map do |num, stats|
    if num.length == 1
      num = "00#{num}"
      national_id = num
    elsif num.length == 2
      num = "0#{num}"
      national_id = num
    end

    price = stats["attack"] + stats["defense"]
    image_url = "product_snaps/#{num}.png"
    Product.create!(national_id: national_id, name: stats["name"], attack: stats["attack"], defense: stats["defense"], price: price, image_url: image_url, description: stats["description"])
  end
  #CREATING TYPES
  types = ["bug" ,"normal",	"fire", "fighting", "water", "flying",	"grass", "poison",	"electric", "ground",	"psychic", "rock",	"ice", "bug",	"dragon", "ghost",	"dark", "steel",	"fairy"]
  types.each do |type|
    Type.create!(name: type)
  end
  #CREATING CATEGORIES
  product.map do |num, stats|
    stats["categories"].each do |category|
      type_id = Type.find_by(name: category).id
      Category.create!(product_id: num.to_i, type_id: type_id)
    end
  end
  #CREATING MOVES
  moves.each do |move|
    type = move[1]
    type_id = Type.find_by(name: type).id
    Move.create!(name: move[0], type_id: type_id)
  end
  # CREATING POKEMOVES
  product.map do |num, stats|
    stats["moves"].each do |move|
      move_id = Move.find_by(name: move).id
      Pokemove.create!(product_id: num.to_i, move_id: move_id)
    end
  end
  #CREATING EVOLUTIONS
  product.map do |num, stats|
    if stats["evolution"]
      evolution_id = Product.find_by(name: stats["evolution"]).id
      Evolution.create!(product_id: num.to_i, evolution_id: evolution_id)
    end
  end


  User.create(email: "derekchan916", fname: "Derek", lname: "Chan", password: "derekchan916")

  User.create(email: "lorenallchan", fname: "Lorena", lname: "Chan", password: "lorenallchan")

  Review.create(author_id: 1, product_id: 1, star_rating: 5, title: "Pretty Good", body: "This little fella was Pretty good.")
  Review.create(author_id: 2, product_id: 1, star_rating: 2, title: "Mehhhhh", body: "Wasn't THAAAT great... was only ok.")

  CartItem.create(user_id: 1, product_id: 1)
  OrderedItem.create(user_id: 1, product_id: 1, quantity: 1)
end
