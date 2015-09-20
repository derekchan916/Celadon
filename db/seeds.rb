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
      "categories"=>["Grass", "Poison"],
      "moves"=>[
         "Tackle",
         "Vine Whip"
      ],
      "evolution"=>"Ivysaur"
    },
    "2"=>{
      "name"=>"Ivysaur",
      "attack"=>62,
      "defense"=>63,
      "description"=>"Ivysaur is a quadruped Pokémon similar to a dinosaur. It has blue-green skin with darker patches. Two pointed teeth protrude from its upper jaw, and it has narrow red to purple eyes. On top of its head are pointed ears with black inside. It has a short, rounded snout with a wide mouth. Each of its feet have three claws on them. The bulb on its back has bloomed into a large pink bud. A short brown trunk surrounded by leafy green fronds supports the bud. The weight of this bud prevents Ivysaur from standing on its hind legs and forces its legs to grow sturdy. When its plant is ready to bloom, it gives off a distinct, strong sweet-smelling aroma and starts swelling. Ivysaur will also start spending more time in sunlight in preparation for its upcoming evolution. Exposure to sunlight adds to the strength of both Ivysaur and its plant. Ivysaur's natural habitat is plains. However, it is rare, as many are in captivity.",
      "categories"=>["Grass", "Poison"],
      "moves"=>[
         "Tackle",
         "Vine Whip",
         "Razor Leaf"
      ],
      "evolution"=>"Venusaur"
    },
    "3"=>{
      "name"=>"Venusaur",
      "attack"=>82,
      "defense"=>83,
      "description"=>"Venusaur is a squat, quadruped Pokémon with bumpy, bluish green skin. It has small, circular red eyes, a short, blunt snout, and a wide mouth with two pointed teeth in the upper jaw, and four pointed teeth in the lower jaw. On top of its head are small, pointed ears with reddish pink insides. It has three clawed toes on each foot. The bud on its back has bloomed in a large pink, white-spotted flower. The flower is supported by a thick, brown trunk surrounded by green fronds. A female Venusaur will have a seed in the center of its flower.",
      "categories"=>["Grass", "Poison"],
      "moves"=>[
         "Tackle",
         "Vine Whip",
         "Razor Leaf"
      ],
    },
    "4"=>{
      "name"=>"Charmander",
      "attack"=>52,
      "defense"=>43,
      "description"=>"Charmander is a bipedal, reptilian Pokémon with an orange body, though its underside and soles are cream-colored. It has two small fangs visible in its upper and lower jaws and blue eyes. Its arms and legs are short with four fingers and three clawed toes. A fire burns at the tip of this Pokémon’s slender tail, and has blazed there since Charmander’s birth. The flame can be used as an indication of Charmander's health and mood, burning brightly when the Pokémon is strong, weakly when it is exhausted, wavering when it is happy, and blazing when it is enraged. It is said that Charmander dies if its flame goes out. Charmander can be found in hot, mountainous areas. However, it is found far more often in the ownership of Trainers. As shown in Pokémon Snap, Charmander exhibits pack behavior, calling others of its species if it finds food.",
      "categories"=>["Fire"],
      "moves"=>[
         "Scratch",
         "Ember",
         "Growl"
      ],
      "evolution"=>"Charmeleon"
    },
    "5"=>{
      "name"=>"Charmeleon",
      "attack"=>64,
      "defense"=>58,
      "description"=>"Charmeleon is a bipedal, reptilian creature. It has crimson scales and a cream underside. There is a horn-like protrusion on the back of its head, and it has narrow green eyes and a long snout. It has relatively long arms with three sharp claws. Its short legs have feet with three claws and cream-colored soles. The tip of its long, powerful tail has a flame burning on it. The temperature rises to unbearable levels if Charmeleon swings its tail. Charmeleon has a vicious nature and will constantly seek out opponents. Strong opponents excite this Pokémon, causing it to spout bluish-white flames that torch its surroundings. However, it will relax once it has won. It is rare in the wild, but it can be found in mountainous areas.",
      "categories"=>["Fire"],
      "moves"=>[
         "Scratch",
         "Ember",
         "Growl",
         "Flamethrower"
      ],
      "evolution"=>"Charizard"
    },
    "6"=>{
      "name"=>"Charizard",
      "attack"=>84,
      "defense"=>78,
      "description"=>"Charizard is a draconic, bipedal Pokémon. It is primarily orange with a cream underside from the chest to the tip of its tail, which burns with a sizable flame. Charizard has a long neck, small blue eyes, raised nostrils, and two blunt horns protruding from the back of its rectangular head. There are two fangs visible in the upper jaw when its mouth is closed. Two large wings with teal undersides sprout from its back, and a horn-like appendage juts out from the third joint of each wing. Charizard's arms are short and skinny compared to its robust belly, and each limb has three white claws. It has stocky legs and cream-colored soles under its feet.",
      "categories"=>["Fire", "Flying"],
      "moves"=>[
         "Flamethrower",
         "Wing Attack",
         "Slash",
         "Fly"
      ],
    },
    "7"=>{
      "name"=>"Squirtle",
      "attack"=>48,
      "defense"=>65,
      "description"=>"Squirtle is a small Pokémon that resembles a light blue turtle. While it typically walks on its two short legs, it has been shown to run on all fours in Super Smash Bros. Brawl. It has large brown eyes and a slightly hooked upper lip. Each of its hands and feet have three pointed digits. The end of its long tail curls inward. Its body is encased by a tough shell that forms and hardens after birth. This shell is brown on the top, pale yellow on the bottom, and has a thick white ridge between the two halves. Squirtle's shell is a useful tool. It can withdraw into the shell for protection or for sleeping, and its grooved, rounded shape helps to reduce water resistance when this Pokémon swims. Squirtle can spray foamy water from its mouth with great accuracy. Squirtle is scarce in the wild, although it can be found around small ponds and lakes. The anime has shown that it can be found living on secluded islands with other members of its evolutionary line.",
      "categories"=>["Water"],
      "moves"=>[
         "Tackle",
         "Bubble",
         "Water Gun"
      ],
      "evolution"=>"Wartortle"
    },
    "8"=>{
      "name"=>"Wartortle",
      "attack"=>63,
      "defense"=>80,
      "description"=>"Wartortle is a bipedal, indigo-blue Pokémon similar to a turtle. It has brown eyes, a dark blue streak on each cheek, and two sharp teeth protruding from its upper jaw. It has three clawed fingers and pointed toes. Bluish white fur covers its long ears and tail. A brown shell with a pale yellow underside encases its body. A thick, white rim separates the upper and lower halves of the shell. As Wartortle grows old, its tail fur will darken, and it may have algae growing on its shell. The shell may also carry scars from past battles. To maintain balance while swimming at high speeds, Wartortle moves its furry ears and tail. It can use the fur to store air for extended underwater diving. Its tail is a popular symbol of longevity, making it popular with the elderly. It hides in water when hunting and emerges to surprise its prey. The anime has shown that Wartortle can be found living in colonies on islands, but its preferred habitat seems to be freshwater ponds and lakes.",
      "categories"=>["Water"],
      "moves"=>[
         "Tackle",
         "Bubble",
         "Water Gun",
         "Bite"
      ],
      "evolution"=>"Blastoise"
    },
    "9"=>{
      "name"=>"Blastoise",
      "attack"=>83,
      "defense"=>100,
      "description"=>"Blastoise is a large, bipedal tortoise-like Pokémon. Its body is dark blue and is mostly hidden by its tough, brown shell. This shell has a pale yellow underside and a white ridge between the upper and lower halves, which also encircles the arms. Two powerful water cannons reside in the top sides of its shell. These cannons can be extended or withdrawn and can be used to assist in high-speed charges. Blastoise's head has triangular ears which are black on the inside, small brown eyes, and a cream-colored lower jaw. Its arms are thick and striated with three claws on each hand. Its feet have three claws on the front and one on the back. It has a stubby tail.",
      "categories"=>["Water"],
      "moves"=>[
         "Hydro Pump",
         "Bubble",
         "Water Gun",
         "Bite"
      ],
    },
  }

  moves = [
    ["Absorb","Grass"],
    ["Acid","Poison"],
    ["Acid Armor","Poison"],
    ["Agility","Psychic"],
    ["Amnesia","Psychic"],
    ["Aurora Beam","Ice"],
    ["Barrage","Normal"],
    ["Barrier","Psychic"],
    ["Bide","Normal"],
    ["Bind","Normal"],
    ["Bite","Dark"],
    ["Blizzard","Ice"],
    ["Body Slam","Normal"],
    ["Bone Club","Ground"],
    ["Bonemerang","Ground"],
    ["Bubble","Water"],
    ["Bubble Beam","Water"],
    ["Clamp","Water"],
    ["Comet Punch","Normal"],
    ["Confuse Ray","Ghost"],
    ["Confusion","Psychic"],
    ["Constrict","Normal"],
    ["Conversion","Normal"],
    ["Counter","Fighting"],
    ["Crabhammer","Water"],
    ["Cut","Normal"],
    ["Defense Curl","Normal"],
    ["Dig","Ground"],
    ["Disable","Normal"],
    ["Dizzy Punch","Normal"],
    ["Double Kick","Fighting"],
    ["Double Slap","Normal"],
    ["Double Team","Normal"],
    ["Double-Edge","Normal"],
    ["Dragon Rage","Dragon"],
    ["Dream Eater","Psychic"],
    ["Drill Peck","Flying"],
    ["Earthquake","Ground"],
    ["Egg Bomb","Normal"],
    ["Ember","Fire"],
    ["Explosion","Normal"],
    ["Fire Blast","Fire"],
    ["Fire Punch","Fire"],
    ["Fire Spin","Fire"],
    ["Fissure","Ground"],
    ["Flamethrower","Fire"],
    ["Flash","Normal"],
    ["Fly","Flying"],
    ["Focus Energy","Normal"],
    ["Fury Attack","Normal"],
    ["Fury Swipes","Normal"],
    ["Glare","Normal"],
    ["Growl","Normal"],
    ["Growth","Normal"],
    ["Guillotine","Normal"],
    ["Gust","Flying"],
    ["Harden","Normal"],
    ["Haze","Ice"],
    ["Headbutt","Normal"],
    ["High Jump Kick","Fighting"],
    ["Horn Attack","Normal"],
    ["Horn Drill","Normal"],
    ["Hydro Pump","Water"],
    ["Hyper Beam","Normal"],
    ["Hyper Fang","Normal"],
    ["Hypnosis","Psychic"],
    ["Ice Beam","Ice"],
    ["Ice Punch","Ice"],
    ["Jump Kick","Fighting"],
    ["Karate Chop","Fighting"],
    ["Kinesis","Psychic"],
    ["Leech Life","Bug"],
    ["Leech Seed","Grass"],
    ["Leer","Normal"],
    ["Lick","Ghost"],
    ["Light Screen","Psychic"],
    ["Lovely Kiss","Normal"],
    ["Low Kick","Fighting"],
    ["Meditate","Psychic"],
    ["Mega Drain","Grass"],
    ["Mega Kick","Normal"],
    ["Mega Punch","Normal"],
    ["Metronome","Normal"],
    ["Mimic","Normal"],
    ["Minimize","Normal"],
    ["Mirror Move","Flying"],
    ["Mist","Ice"],
    ["Night Shade","Ghost"],
    ["Pay Day","Normal"],
    ["Peck","Flying"],
    ["Petal Dance","Grass"],
    ["Pin Missile","Bug"],
    ["Poison Gas","Poison"],
    ["Poison Powder","Poison"],
    ["Poison Sting","Poison"],
    ["Pound","Normal"],
    ["Psybeam","Psychic"],
    ["Psychic","Psychic"],
    ["Psywave","Psychic"],
    ["Quick Attack","Normal"],
    ["Rage","Normal"],
    ["Razor Leaf","Grass"],
    ["Razor Wind","Normal"],
    ["Recover","Normal"],
    ["Reflect","Psychic"],
    ["Rest","Psychic"],
    ["Roar","Normal"],
    ["Rock Slide","Rock"],
    ["Rock Throw","Rock"],
    ["Rolling Kick","Fighting"],
    ["Sand Attack","Ground"],
    ["Scratch","Normal"],
    ["Screech","Normal"],
    ["Seismic Toss","Fighting"],
    ["Self-Destruct","Normal"],
    ["Sharpen","Normal"],
    ["Sing","Normal"],
    ["Skull Bash","Normal"],
    ["Sky Attack","Flying"],
    ["Slam","Normal"],
    ["Slash","Normal"],
    ["Sleep Powder","Grass"],
    ["Sludge","Poison"],
    ["Smog","Poison"],
    ["Smokescreen","Normal"],
    ["Soft-Boiled","Normal"],
    ["Solar Beam","Grass"],
    ["Sonic Boom","Normal"],
    ["Spike Cannon","Normal"],
    ["Splash","Normal"],
    ["Spore","Grass"],
    ["Stomp","Normal"],
    ["Strength","Normal"],
    ["String Shot","Bug"],
    ["Struggle","Normal"],
    ["Stun Spore","Grass"],
    ["Submission","Fighting"],
    ["Substitute","Normal"],
    ["Super Fang","Normal"],
    ["Supersonic","Normal"],
    ["Surf","Water"],
    ["Swift","Normal"],
    ["Swords Dance","Normal"],
    ["Tackle","Normal"],
    ["Tail Whip","Normal"],
    ["Take Down","Normal"],
    ["Teleport","Psychic"],
    ["Thrash","Normal"],
    ["Thunder","Electric"],
    ["Thunder Punch","Electric"],
    ["Thunder Shock","Electric"],
    ["Thunder Wave","Electric"],
    ["Thunderbolt","Electric"],
    ["Toxic","Poison"],
    ["Transform","Normal"],
    ["Tri Attack","Normal"],
    ["Twineedle","Bug"],
    ["Vice Grip","Normal"],
    ["Vine Whip","Grass"],
    ["Water Gun","Water"],
    ["Waterfall","Water"],
    ["Whirlwind","Normal"],
    ["Wing Attack","Flying"],
    ["Withdraw","Water"],
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

    price = stats["attack"] + stats["defense"] * 2.45
    image_url = "product_snaps/#{num}.png"
    Product.create!(national_id: national_id, name: stats["name"], attack: stats["attack"], defense: stats["defense"], price: price, image_url: image_url, description: stats["description"])
  end
  #CREATING TYPES
  types = ["Bug" ,"Normal",	"Fire", "Fighting", "Water", "Flying",	"Grass", "Poison",	"Electric", "Ground",	"Psychic", "Rock",	"Ice", "Bug",	"Dragon", "Ghost",	"Dark", "Steel",	"Fairy"]
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
