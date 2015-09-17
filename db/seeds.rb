# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.transaction do
  product = {
    "1"=>{
      "name"=>"Bulbasaur",
      "attack"=>49,
      "defense"=>49,
      "poke_type"=>"grass",
      "description"=>"Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun's rays, the seed grows progressively larger.",
      "moves"=>[
         "tackle",
         "vine whip"
      ],
    },
    "2"=>{
      "name"=>"Ivysaur",
      "attack"=>62,
      "defense"=>63,
      "poke_type"=>"grass",
      "description"=>"There is a bud on this Pokémon's back. To support its weight, Ivysaur's legs and trunk grow thick and strong. If it starts spending more time lying in the sunlight, it's a sign that the bud will bloom into a large flower soon.",
      "moves"=>[
         "tackle",
         "vine whip",
         "razor leaf"
      ],
    },
    "3"=>{
      "name"=>"Venusaur",
      "attack"=>82,
      "defense"=>83,
      "poke_type"=>"grass",
      "description"=>"There is a large flower on Venusaur's back. The flower is said to take on vivid colors if it gets plenty of nutrition and sunlight. The flower's aroma soothes the emotions of people.",
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
      "poke_type"=>"fire",
      "description"=>"The flame that burns at the tip of its tail is an indication of its emotions. The flame wavers when Charmander is enjoying itself. If the Pokémon becomes enraged, the flame burns fiercely.",
      "moves"=>[
         "scratch",
         "ember",
         "metal claw"
      ],
    },
    "5"=>{
      "name"=>"Charmeleon",
      "attack"=>64,
      "defense"=>58,
      "poke_type"=>"fire",
      "description"=>"Charmeleon mercilessly destroys its foes using its sharp claws. If it encounters a strong foe, it turns aggressive. In this excited state, the flame at the tip of its tail flares with a bluish white color.",
      "moves"=>[
         "scratch",
         "ember",
         "metal claw",
         "flamethrower"
      ],
    },
    "6"=>{
      "name"=>"Charizard",
      "attack"=>84,
      "defense"=>78,
      "poke_type"=>"fire",
      "description"=>"Charizard flies around the sky in search of powerful opponents. It breathes fire of such great heat that it melts anything. However, it never turns its fiery breath on any opponent weaker than itself.",
      "moves"=>[
         "flamethrower",
         "wing attack",
         "slash",
         "metal claw"
      ],
    },
  }

  product = product.map do |num, stats|
    if num.length == 1
      num = "00#{num}"
      stats["national_id"] = num
    elsif num.length == 2
      num = "0#{num}"
      stats["national_id"] = num
    end

    stats["price"] = rand(50..100)
    stats["level"] = rand(20..40)

    stats["image_url"] = "product_snaps/#{num}.png"
    stats
  end

  Product.create!(product)

  User.create(email: "derekchan916", fname: "Derek", lname: "Chan", password: "derekchan916")

  User.create(email: "lorenallchan", fname: "Lorena", lname: "Chan", password: "lorenallchan")

  Review.create(author_id: 1, product_id: 1, star_rating: 5, title: "Pretty Good", body: "This little fella was Pretty good.")
  Review.create(author_id: 2, product_id: 1, star_rating: 2, title: "Mehhhhh", body: "Wasn't THAAAT great... was only ok.")

  CartItem.create(user_id: 1, product_id: 1)
  OrderedItem.create(user_id: 1, product_id: 1, quantity: 1)
end
