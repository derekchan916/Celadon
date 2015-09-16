# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.transaction do
  pokemon = {
    "1"=>{
      "name"=>"Bulbasaur",
      "attack"=>49,
      "defense"=>49,
      "poke_type"=>"grass",
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
      "moves"=>[
         "flamethrower",
         "wing attack",
         "slash",
         "metal claw"
      ],
    },
  }

  pokemon = pokemon.map do |num, stats|
    if num.length == 1
      num = "00#{num}"
      stats["national_id"] = num
    elsif num.length == 2
      num = "0#{num}"
      stats["national_id"] = num
    end

    stats["price"] = rand(50..100)
    stats["level"] = rand(20..40)

    stats["image_url"] = "/assets/pokemon_snaps/#{num}.png"
    stats
  end

  Product.create!(pokemon)
end
