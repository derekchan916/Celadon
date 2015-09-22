# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.transaction do
  # Product.destroy_all
  # Type.destroy_all
  # CartItem.destroy_all
  # OrderedItem.destroy_all
  # Category.destroy_all
  # Evolution.destroy_all
  # Move.destroy_all
  # Pokemove.destroy_all
  # Review.destroy_all
  # View.destroy_all

  product = {
    "1"=>{
      "name"=>"Bulbasaur",
      "attack"=>49,
      "defense"=>49,
      "description"=>"Bulbasaur is a small, quadruped Pokémon with green to bluish-green skin and darker green patches. It has red eyes with white pupils and sclera and pointed, ear-like structure on top of its head. Its snout is short and blunt, and it has a wide mouth. A pair of small, pointed teeth visible in the upper jaw when its mouth is open. Each of its thick legs ends with three sharp claws. On its back is a green plant bulb, which is grown from a seed planted there at birth. The bulb provides it with energy through photosynthesis as well as from the nutrient-rich seeds contained within. As mentioned in the anime, starter Pokémon are raised by Breeders to be distributed to new Trainers. Having been domesticated from birth, Bulbasaur is regarded as both a rare and well-behaved Pokémon. It is known to be extremely loyal, even after long-term abandonment. Bulbasaur has also shown itself to be an excellent caretaker, even having a special technique called the Bulba-by. To perform this technique, Bulbasaur uses its vines to pick up a young Pokémon and soothingly rocks the young one in the air. It is found in grasslands and forests throughout the Kanto region. However, due to Bulbasaur's status as starter Pokémon, it is hard to come by in the wild and generally found under the ownership of a Trainer. It has been observed that a Bulbasaur's bulb will flash blue when it is ready to evolve. If it does not want to evolve, it struggles to resist the transformation. Many Bulbasaur gather every year in a hidden garden in Kanto to become Ivysaur in a ceremony led by a Venusaur.",
      "poke_type"=>["Grass", "Poison"],
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
      "poke_type"=>["Grass", "Poison"],
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
      "poke_type"=>["Grass", "Poison"],
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
      "poke_type"=>["Fire"],
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
      "poke_type"=>["Fire"],
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
      "poke_type"=>["Fire", "Flying"],
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
      "poke_type"=>["Water"],
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
      "poke_type"=>["Water"],
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
      "poke_type"=>["Water"],
      "moves"=>[
         "Hydro Pump",
         "Bubble",
         "Water Gun",
         "Bite"
      ],
    },
    "10"=>{
      "name"=>"Caterpie",
      "attack"=>30,
      "defense"=>35,
      "description"=>"Caterpie is a serpentine Pokémon that resembles the larvae of the Spicebush Swallowtail. It is a green caterpillar with yellow ring-shaped markings down the sides of its body. It also has large yellow eyes with black pupils. Its most notable characteristic is the bright red antenna (osmeterium) on its head, which releases a stench to repel predators. These and the large eye-shaped markings help to startle predators. Its feet are tipped with suction cups, permitting this Pokémon to scale most surfaces with minimal effort.",
      "poke_type"=>["Bug"],
      "moves"=>[
         "Tackle"
      ],
      "evolution"=>"Metapod"
    },
    "11"=>{
      "name"=>"Metapod",
      "attack"=>34,
      "defense"=>40,
      "description"=>"Metapod resembles a chrysalis. Its soft body is protected by a hard outer shell while it undergoes metamorphosis. While this shell is said to be as hard as steel, a sudden, powerful impact could cause its tender body to pop out, leaving it completely exposed. Metapod generally remains motionless, preparing its soft innards for evolution inside its hard shell. If an enemy discovers Metapod, it is unable to do anything other than harden its outer shell. Metapod lives in forests.",
      "poke_type"=>["Bug"],
      "moves"=>[
        "Harden"
      ],
      "evolution"=>"Butterfree"
    },
    "12"=>{
      "name"=>"Butterfree",
      "attack"=>45,
      "defense"=>50,
      "description"=>"Butterfree resembles a vaguely anthropomorphic butterfly with a purple body. Unlike true insects, it only has two body segments and four light blue legs. Butterfree has two black antennae, a light blue snout with two fangs underneath, and large, red compound eyes. Its two pairs of veined wings are white with black accents. The oval scales of a female Butterfree's lower wings are black, but white in males.
Butterfree's wings are covered with poisonous powders that fall off continuously as it flies. This powder repels water, enabling it to gather honey even in the rain. Butterfree will roam up to six miles from its nest in search of honey, which it carries with the hairs of its legs. It also consumes sap from trees pierced by Heracross, as seen in the anime. Butterfree is found in forests, but has also been observed flying near the ocean as part of its migratory breeding pattern.
",
      "poke_type"=>["Bug", "Flying"],
      "moves"=>[
         "Confusion",
         "Gust",
         "Psybeam"
      ],
    },
    "13"=>{
      "name"=>"Weedle",
      "attack"=>35,
      "defense"=>30,
      "description"=>"Weedle is a small larva Pokémon with a beige, yellow, or rust-colored segmented body. Combined with its red, purple, or fuchsia nose and feet, Weedle's bright coloration wards off its enemies. Weedle has a conical, two-inch venomous stinger on its head and a barbed one on its tail, but its other body parts are spherical.
Weedle can retaliate against attackers and those who step on it with its strong toxin. It can distinguish its favorite kinds of leaves using its acute sense of smell. As a young Bug Pokémon, its daily appetite for leaves matches its weight. Weedle can be found in forests and usually hides in grass, bushes, and under the leaves it eats.",
      "poke_type"=>["Bug", "Poison"],
      "moves"=>[
         "Poison Sting"
      ],
      "evolution"=>"Kakuna"
    },
    "14"=>{
      "name"=>"Kakuna",
      "attack"=>36,
      "defense"=>40,
      "description"=>"Kakuna is a yellow, cocoon Pokémon. Kakuna has a dome-shaped head and black, triangular eyes. It has two scythe-like arms in the middle of its body. When it comes close to evolving, its body gives off heat that makes it warm to the touch. Kakuna remains virtually immobile and waits for evolution often hanging from tree branches by long strands of silk. When attacked, however, it can extend its poison barbs. Kakuna nests in forests and misty wooded areas. Occasionally, it will also nest at the mouths of tunnels and caves as seen in Pokémon Snap.",
      "poke_type"=>["Bug", "Poison"],
      "moves"=>[
        "Harden"
      ],
      "Kakuna"=>"Beedrill"
    },
    "15"=>{
      "name"=>"Beedrill",
      "attack"=>45,
      "defense"=>45,
      "description"=>"Beedrill mostly resembles a bipedal wasp; however, it only has four legs instead of six and lacks pigment pits. Beedrill's head is round with a slightly pointed mouth, large, red eyes, and antennae in the shape of the number seven. Its forelegs are tipped with long, conical stingers. It stands on its other two legs, which are long, segmented, and insectoid in shape. Beedrill has two pairs of rounded, veined wings, and another stinger on its striped abdomen.",
      "poke_type"=>["Bug", "Poison"],
      "moves"=>[
        "Fury Attack",
        "Rage",
        "Twineedle",
        "Agility"
      ]
    },
    "16"=>{
      "name"=>"Pidgey",
      "attack"=>45,
      "defense"=>40,
      "description"=>"Pidgey is a small, plump-bodied avian Pokémon. It is primarily brown with a cream-colored face, underside, and flight feathers. Both its feet and beak are a pinkish-gray color. It has black, angular markings around its eyes and a small crest of brown and cream feathers above its eyes.
Pidgey has an extremely sharp sense of direction and homing instincts. It can locate its nest even when far removed from familiar surroundings. It is a docile Pokémon, and generally prefers to flee from its enemies rather than fight them. By flapping its wings rapidly, it can whip up dust clouds and create whirlwinds to protect itself and flush out potential prey. Pidgey is very common throughout its range and can often be seen in meadows and forests.
",
      "poke_type"=>["Normal", "Flying"],
      "moves"=>[
         "Tackle",
         "Gust"
      ],
      "evolution"=>"Pidgeotto"
    },
    "17"=>{
      "name"=>"Pidgeotto",
      "attack"=>60,
      "defense"=>55,
      "description"=>"Pidgeotto is a raptor-like avian Pokémon. It is covered with brown feathers, and has a cream-colored face and underside. It has a crest of pinkish-red feathers on its head and black, angular markings behind its eyes. The plumage of its tail has alternating red and yellow feathers with ragged tips. Its beak and legs are pink, and it has powerful, sharp talons that it uses to grasp prey.
Pidgeotto is a powerful flier capable of carrying prey several miles to its nest. It has amazing vision, which helps it locate preferred prey Pokémon such as Exeggcute and Magikarp. The anime has also shown it preying on Caterpie. Pidgeotto claims a sprawling territory of more than 60 miles, which it defends fiercely. Its nest is usually in the center of its territory and it circles its territory throughout the day, looking out for food and intruders. It is most often found in forests.",
      "poke_type"=>["Normal", "Flying"],
      "moves"=>[
         "Tackle",
         "Gust",
         "Wing Attack"
      ],
      "evolution"=>"Pidgeot"
    },
    "18"=>{
      "name"=>"Pidgeot",
      "attack"=>80,
      "defense"=>75,
      "description"=>"Pidgeot is an avian Pokémon with large wings, sharp talons, and a short, hooked beak. Its glossy plumage is mostly brown with cream-colored underparts and flight feathers. Its head is decorated with a red and yellow crest that is nearly as long as its body. The fan-like feathers of its tail are red. Its beak and legs are pink, and there are angular black markings around its eyes.
Mega Pidgeot has an even more elaborate crest on its head, with a streamer-like red plume extending from a mane of yellow feathers. It has a feather projecting from the front and a highlight on the left side of the crest which are also red. The crest is sensitive to air currents, acting like a large antenna and stabilizing Mega Pidgeot's flight. Pidgeot grows noticeably when it Mega Evolves, with a larger body and longer, broader wings. With its increased power, it is capable of whipping up gusts that can smash huge trees. Its wingtips and tailfeathers are bordered with blue, and its irises are red in color.",
      "poke_type"=>["Normal", "Flying"],
      "moves"=>[
        "Tackle",
        "Gust",
        "Wing Attack"
      ],
    },
    "19"=>{
      "name"=>"Rattata",
      "attack"=>56,
      "defense"=>35,
      "description"=>"Rattata is a small, quadruped rodent Pokémon. Its most notable feature is its large teeth. Like most rodents, its teeth grow continuously throughout its life and must be worn down by gnawing. It has long whiskers and a long, slightly curled tail. Rattata has purple fur on its back, and cream fur on its stomach. Females have shorter whiskers and lighter fur color.
Rattata can live wherever it can find food, which it searches for most of the day. Thanks to its sharp fangs, it is able to eat nearly anything. Its hardiness lets it live in many environments, although it mainly lives on plains and savannas. Because it reproduces so quickly, a pair of Rattata can quickly colonize an area. When it is threatened, Rattata can deliver a powerful bite.
",
      "poke_type"=>["Normal"],
      "moves"=>[
         "Tackle",
         "Hyper Fang"
      ],
      "evolution"=>"Raticate"
    },
    "20"=>{
      "name"=>"Raticate",
      "attack"=>81,
      "defense"=>60,
      "description"=>"Raticate is a large, rodent Pokémon. Although it is often depicted on its hind legs, it is a quadruped. It is mostly tawny colored with a cream underside. It has large incisors that grow constantly. These teeth are strong enough to gnaw through steel. There are three whiskers on each side of its face, which it uses to maintain balance. Females will have shorter whiskers and lighter fur. It has webbed feet with three toes that allow it to swim. Its tail is long and scaly, and its ears have a ragged appearance.",
      "poke_type"=>["Normal"],
      "moves"=>[
         "Tackle",
         "Hyper Fang"
      ],
    },
    "21"=>{
      "name"=>"Spearow",
      "attack"=>60,
      "defense"=>30,
      "description"=>"Spearow is a brown avian Pokémon that is very small. It has rough, brown plumage on its head with a short, hooked beak. Spearow's underside is beige with two thin stripes. Spearow's light pink feet have three talons, and its wings are a pinkish red with lighter edges. Spearow's back is black, and it has three brown tail feathers.
Although inept at other aspects of its flying, such as height and distance, Spearow is still capable of flying quickly to protect its territory. However, it must flap its wings at high speeds to stay aloft. Spearow's loud shrieks can be heard over half a mile away, and are used to warn other of its kind of danger. The anime has shown that Spearow sees in black and white and will chase its foes in a large flock. Spearow is usually found in desolate wastelands and fields, where it hunts for insects.",
      "poke_type"=>["Normal", "Flying"],
      "moves"=>[
         "Peck"
      ],
      "evolution"=>"Fearow"
    },
    "22"=>{
      "name"=>"Fearow",
      "attack"=>90,
      "defense"=>65,
      "description"=>"Fearow is a large, mostly brown avian Pokémon with a vulturine neck and broad, powerful wings. It has a long, pointed, pink beak, and a decorative red coxcomb on top of its head. Its narrow eyes have very small pupils, and do not appear to have colored irises. It has shaggy, feathers on the base of its neck and covering the upper portion of its wings. These feathers are cream-colored, as are the tips of its flight feathers. Its sharp-clawed talons are pink, with three toes pointing forward and one pointing backward.
Fearow's large wings and stamina allow it to fly for an entire day without landing. It will shoot upward, and then dive down to catch prey. Its long neck and beak allow it to pluck prey from both land and water, and it will even catch tiny insects that hide underground. Fearow are found in wastelands and desolate fields.",
      "poke_type"=>["Normal", "Flying"],
      "moves"=>[
         "Peck",
         "Drill Peck"
      ],
    },
    "23"=>{
      "name"=>"Ekans",
      "attack"=>60,
      "defense"=>44,
      "description"=>"Ekans is a purple, serpentine Pokémon. Its eyes, underbelly, stripe, and rattle are yellow. Ekans has three pairs of black lines encircling its body, as well as another line that connects each slitted eye and curves toward its nose. Its large mouth has a round, pink tongue and no visible teeth.
Ekans moves stealthily through grass and preys on Eggs from Pidgey and Spearow nests, but can strike other prey from behind. It grows longer with age and wraps itself around tree branches at night to rest. If not in a tree, it will coil itself up—a position in which it can defend itself from all directions. Its jaw can detach to swallow large prey, but such a meal can make Ekans too heavy to move. A newborn Ekans's bite is painful, but not venomous. It flicks its tongue out to detect danger and the scent of prey. It was also shown in the second movie to possess some swimming abilities. Ekans lives in grassy savannas and plains.",
      "poke_type"=>["Poison"],
      "moves"=>[
         "Poison Sting",
         "Bite"
      ],
      "evolution"=>"Arbok"
    },
    "24"=>{
      "name"=>"Arbok",
      "attack"=>85,
      "defense"=>69,
      "description"=>"Arbok is a serpent like Pokémon with purple scales all over its body. It has a large hood just below its head. On its hood, it has a design much like an angry face, which can come in six variations. The pattern typically has red and yellow eyespot outlined it black, a wide black streak resembling a mouth, and a V-shaped stripe about the face pattern.
Arbok is capable of crushing opponents by coiling its body around them and squeeze them tightly. It can even flatten steel oil drums. If it encounters an enemy, it raises its head, mimics the opponent with the frightening pattern on its body and making eerie sounds by expelling air from its mouth. It has been stated that if any part of Arbok's body except for the head is cut off, it can regrow the rest of its body again in a matter of a few weeks. It also has the ability to detect vibrations as shown in the anime. Arbok has been known to be capable of spending long periods underwater and surviving in aquatic environments. One particular Arbok could change its pattern at any time to increase power to different stats and get invulnerability to status conditions, if the pattern is uncovered.",
      "poke_type"=>["Poison"],
      "moves"=>[
         "Poison Sting",
         "Bite",
         "Acid"
      ],
    },
    "25"=>{
      "name"=>"Pikachu",
      "attack"=>60,
      "defense"=>32,
      "description"=>"Pikachu is a short, chubby rodent Pokémon. It is covered in yellow fur, and its ears are long and pointed with black tips. It has a small mouth, brown eyes, and two red circles on its cheeks. There are pouches inside its cheeks where it stores electricity. Its forearms are short, with five fingers on each paw, and its feet have three toes. It has two brown stripes on its back, and its tail is in the shape of a lightning bolt with a patch of brown fur at the base. A female will have a V-shaped notch at the end of its tail, which looks like the top of a heart. It is classified as a quadruped, but it has been known to stand and walk on its hind legs.
The anime has shown that Pikachu sometimes travel in groups. It raises its tail to check its surroundings, and is occasionally struck by lightning in this position. Living in forested areas, Pikachu is found foraging for berries it roasts with electricity to make them tender enough to eat. It has been observed eating and sometimes destroying telephone poles, wires, and other electronic equipment.",
      "poke_type"=>["Electric"],
      "moves"=>[
        "Thunderbolt",
        "Scratch"
      ],
      "evolution"=>"Raichu"
    },
    "26"=>{
      "name"=>"Raichu",
      "attack"=>90,
      "defense"=>55,
      "description"=>"Raichu is a bipedal, rodent-like Pokémon. Raichu is covered in dark orange fur with a cream belly. Its arms and feet have patches of brown fur at the end, and the soles of its big feet are tan with a circular orange pad. Its bifurcated ears are brown on the outside and yellow on the insides and ends in a distinctive curl. The electric sacs on its cheeks are yellow. It has two horizontal brown stripes on its back. Its long, thin tail has a lightning bolt-shaped end. This lightning bolt is smaller on females. Its tail is used to gather electricity from the atmosphere, or it can be planted in the ground to search for electricity. Its tail also serves to protect itself from its own power.",
      "poke_type"=>["Electric"],
      "moves"=>[
         "Thunder Shock",
         "Thunderbolt",
         "Thunder"
      ],
    },
    "27"=>{
      "name"=>"Sandshrew",
      "attack"=>75,
      "defense"=>85,
      "description"=>"Sandshrew is a bipedal mammalian Pokémon, but runs on all fours in the anime. Its yellow hide is dry, tough, blends in with desert sand, and has a brick pattern, but its underbelly and muzzle are white. Sandshrew has blue, almond-shaped eyes, a pointed snout, and triangular ears with white insides. Its tail is thick and conical. It has two long claws on each foot and three sharp claws on its forepaws, which are used to burrow.
Sandshrew spends much of its time hidden underground in deep burrows. It only emerges to hunt, which it does by waiting within its burrow to instantly lunge out and drag in passing prey. Sandshrew can quickly curl into a tight ball to protect itself from great falls and opponents, but may also throw sand at attackers. While its body can efficiently absorb water to facilitate life in the desert, Sandshrew is also found in grasslands and caves.",
      "poke_type"=>["Ground"],
      "moves"=>[
         "Scratch",
         "Poison Sting"
      ],
      "evolution"=>"Sandslash"
    },
    "28"=>{
      "name"=>"Sandslash",
      "attack"=>100,
      "defense"=>110,
      "description"=>"Sandslash is a bipedal, ground dwelling pholidote Pokémon. Although Sandslash is usually bipedal, it can run on all fours. Its body is mostly covered in sharp, brown quills formed from its tough, dry hide. It has two large claws on its paws and feet. These claws are its primary weapons, and are used for slashing. They can also be used for burrowing. Its claws and spikes can both break off and are shed regularly, but grow back quickly. It can curl into a large ball to protect its white underbelly. In this position, it can roll to attack or escape, and protect itself from heatstroke. Sandslash is also adept at climbing trees, and is prone to ambush its enemies from above. Sandslash can mostly be found in deserts and grasslands.
",
      "poke_type"=>["Ground"],
      "moves"=>[
         "Scratch",
         "Poison Sting",
         "Slash",
         "Swift"
      ],
    },
    "29"=>{
      "name"=>"Nidoran",
      "attack"=>47,
      "defense"=>52,
      "description"=>"Nidoran♀ is a small, quadruped, rodent-like Pokémon. It has large, spiny ears, oversized front teeth, red eyes, and a pair of whiskers on each cheek. It is light blue with several darker blue spots. There are two white claws on each of its paws. Its back is covered with small toxic spines, and it has a small forehead horn. The poison secreted by the spines and horn is extremely potent, and even a scratch from its horn or a drop of poison from its barbs can be deadly. However, this docile Pokémon only uses its poison when it feels threatened. Nidoran♀ lives in open spaces, such as savannas and plains. Nidoran♀ is an exclusively female Pokémon, Nidoran♂ being its male counterpart.",
      "poke_type"=>["Poison"],
      "moves"=>[
         "Scratch"
      ],
      "evolution"=>"Nidorina"
    },
    "30"=>{
      "name"=>"Nidorina",
      "attack"=>60,
      "defense"=>65,
      "description"=>"Nidorina is a quadruped, light-blue Pokémon with darker blue patches. It has red eyes, large, spiny ears, and has two pointed teeth protruding from its upper jaw. It possesses large poison spikes, which it retracts when with a group and while resting in its burrow. Its paws have three claws each, and it is able to stand on its hind legs. The hind legs are longer and thicker than its forelegs. It has a stubby tail. This is a female only species; the male counterpart is Nidorino.
Nidorina is a gentle Pokémon, known to be a caring mother that chews food for its young. It seems to display close family bonds with others of its kind, and becomes nervous when separated. When Nidorina is in a group, it keeps its barbs tucked away to prevent injury, and even does so when it rests. Nidorina prefers not to fight since its horn grows slowly, but if forced or enraged, it prefers physical attacks such as clawing and biting. It also emits ultrasonic cries to befuddle foes. Nidorina lives in hot savannas and plains.",
      "poke_type"=>["Poison"],
      "moves"=>[
        "Scratch"
      ],
      "evolution"=>"Nidoqueen"
    },
    "31"=>{
      "name"=>"Nidoqueen",
      "attack"=>82,
      "defense"=>87,
      "description"=>"Nidoqueen is a large, bipedal blue Pokémon with distinct reptilian features. Its lower jaw, chest plates and lower torso are cream-colored. It has a horn on its forehead, narrow black eyes, and large, spiny ears. There are toxic spikes running down the length of its back, and its body in encased in extremely hard scales that serve as excellent protection from any attack and stand up when Nidoqueen is excited or provoked. It has a thick, powerful tail. This is a female only species; the male counterpart is Nidoking.
Nidoqueen can be quite fierce and is very protective over its young. This Pokémon is at its strongest when it is defending its young, and will try to seal the entrance to its burrow to protect them. When in contact with foes, it can poison them with the spikes from its back or cause small tremors by slamming the ground. It is also adept at sending foes flying with harsh tackles and it uses its hefty bulk to execute powerful moves. Nidoqueen lives in hot savannas and plains.",
      "poke_type"=>["Poison"],
      "moves"=>[
         "Scratch",
         "Poison Sting",
         "Body Slam"
      ],
    },
    "32"=>{
      "name"=>"Nidoran",
      "attack"=>57,
      "defense"=>40,
      "description"=>"Nidoran♂ is a small, quadruped rodent-like Pokémon. It is pinkish purple with darker spots, and has large, spiny ears, oversized front teeth, and red eyes. Its back is covered with many large spines that can release potent poisons if threatened. There is a long, pointed horn on its forehead. The size of this horn is indicative of the strength of its venom. Nidoran♂ is an exclusively male Pokémon, Nidoran♀ being its female counterpart.
Nidoran♂ constantly listens for the sounds of approaching enemies with its large ears. Said ears have unique muscles that allow them to be moved in any direction, and even the slightest sound does not escape Nidoran♂'s notice. In order to listen to distant locations, it flaps its ears like wings. When angry, it extends its toxic spikes and charges, stabbing with its horn to inject poison. Nidoran♂ lives in open spaces, such as savannas and plains.
",
      "poke_type"=>["Poison"],
      "moves"=>[
         "Peck"
      ],
      "evolution"=>"Nidorino"
    },
    "33"=>{
      "name"=>"Nidorino",
      "attack"=>70,
      "defense"=>65,
      "description"=>"Nidorino is a light purple, quadruped Pokémon. It has several darker purple spots across its body. It has large, spiny ears with teal insides, narrow black eyes, and a long snout with two pointed teeth protruding from the upper jaw. It has a ridge of toxic spines on its back, and a long, pointed horn on its forehead. The horn is harder than a diamond and capable of secreting poison on impact. Its short legs have three claws on each foot. This is a male only species; the female counterpart is Nidorina.",
      "poke_type"=>["Poison"],
      "moves"=>[
        "Peck"
      ],
      "evolution"=>"Nidoking"
    },
    "34"=>{
      "name"=>"Nidoking",
      "attack"=>92,
      "defense"=>77,
      "description"=>"Nidoking is a large, bipedal, purple Pokémon with distinct reptilian features. It has small, narrow eyes, large, spiny ears, fur-like tufts on its cheeks, and a short snout filled with pointed teeth. There is a long, venomous horn on its forehead. It has a gray chest and belly plates, three claws on each hand, rounded spines on its elbows, and a single large nail on each foot. There is a ridge of long spines down its back, and it has a long, powerful tail. This is a male only species; the female counterpart is Nidoqueen.
It is said that Nidoking's tail is capable of toppling a metal transmission tower. Nidoking uses this tail to smash, constrict, or break the bones of its prey and enemies. The tail can be swung to create distance between it and its foes before Nidoking charges. Its steel-like hide adds to its powerful, rampaging charges. Nidoking lives in grasslands, rough terrain, and forests.",
      "poke_type"=>["Poison"],
      "moves"=>[
         "Peck",
         "Poison Sting",
         "Mega Punch"
      ],
    },
    "35"=>{
      "name"=>"Clefairy",
      "attack"=>45,
      "defense"=>48,
      "description"=>"Clefairy is a bipedal, pink Pokémon with a chubby, vaguely star-shaped body. A small, pointed tooth protrudes from the upper left corner of its mouth. It has wrinkles beside its black, oval eyes, dark pink, oval markings on its cheeks, two small wings, and large, pointed ears with brown tips. A tuft of fur curls over its forehead, much like its large, upward-curling tail. Each stocky arm has two small claws and a thumb on each hand, and each of its feet has a single toenail.
Clefairy is very shy and rarely shows itself to humans. On the rare occasions it does come down from its mountain home, it can be seen dancing under the light of the full moon. Once the sun starts to rise, it returns home where it sleeps nestled with other Clefairy. Though incapable of flight, Clefairy's wings can store moonlight and allow it to float. The anime has shown that Clefairy is actually an extraterrestrial Pokémon.
",
      "poke_type"=>["Fairy"],
      "moves"=>[
        "Pound",
        "Double Slap"
      ],
      "evolution"=>"Clefable",
    },
    "36"=>{
      "name"=>"Clefable",
      "attack"=>70,
      "defense"=>73,
      "description"=>"Clefable is tall, pink Pokémon with a vaguely star-shaped body. It has long, pointed ears with dark brown tips and black, oval eyes with wrinkles on either side. A curled lock of fur hangs over its forehead, much like its large, upward-curling tail. It has dark pink, three-pointed wings on its back. Its hands have three fingers each, and its feet have two clawed toes and dark pink soles. It has a long, tightly curled tail.
  Clefable is a timid creature that flees when it senses people approaching, and is one of the world's rarest Pokémon. Its sensitive ears can distinctly hear a pin drop from half a mile away. Because of its acute hearing, it prefers to live in quiet, mountainous areas of which they are protective. Using a bouncy gait, it is able to walk on water and sometimes appears to be flying using its small wings.
  ",
      "poke_type"=>["Fairy"],
      "moves"=>[
        "Sing",
        "Double Slap",
        "Metronome"
      ],
    },
    "37"=>{
      "name"=>"Vulpix",
      "attack"=>41,
      "defense"=>40,
      "description"=>"Vulpix is a small, quadruped, fox-like Pokémon. It has red-brown pelt, brown, pupil-less eyes, large, pointed ears with dark brown insides, and six orange tails with curled tips. The tails grow hot as evolution approaches for this Pokémon. Vulpix also has curled locks of orange fur with bangs on top of its head. At birth, Vulpix has only one white tail, which apparently splits and grows more beautiful and warmer as it grows older. Vulpix has a cream underbelly, and brown feet with lighter brown paw pads.
Vulpix has a flame inside its body that never goes out, and is capable of manipulating fire to such precision as to create floating wisps of flame. When the temperature outside increases, it will expel flames from its mouths to prevent its body from overheating. Vulpix is known to feign injury to escape from opponents too powerful for it to defeat. Vulpix can be found most commonly in grassy plains.
In the anime",
      "poke_type"=>["Fire"],
      "moves"=>[
        "Ember",
        "Confuse Ray",
        "Quick Attack"
      ],
    },
    "38"=>{
      "name"=>"Ninetales",
      "attack"=>76,
      "defense"=>75,
      "description"=>"This fox-like, quadruped Pokémon is covered with a thick, luxurious golden-white fur. It has nine, long tails, each of which is tipped with pale orange. There is a fluffy crest atop its head, and a small mane around its neck. Ninetales has gleaming red eyes that are said to give it the ability to control minds. Its ears are pointed, and it has long, slender legs with three-toed paws.
Ninetales is a very vengeful Pokémon that has been known to curse those who mistreat it. This intelligent Pokémon is able to understand human speech easily. It can live for 1,000 years, due to the energy within its nine tails, each of which is said to have a different mystical power. It can be found living in grasslands.",
      "poke_type"=>["Fire"],
      "moves"=>[
         "Ember",
         "Confuse Ray",
         "Quick Attack"
      ],
    },
    "39"=>{
      "name"=>"Jigglypuff",
      "attack"=>45,
      "defense"=>20,
      "description"=>"Jigglypuff is a round, pink ball with pointed ears and large, blue eyes. It has rubbery, balloon-like skin and small, stubby arms and somewhat long feet. On top of its head is a curled tuft of fur. As seen in Pokémon Stadium, it is filled with air, as a defeated Jigglypuff, deflates until it is flat. By drawing extra air into its body, it is able to float as demonstrated in Super Smash Bros.
Jigglypuff uses its eyes to mesmerize opponents. Once it achieves this, it will inflate its lungs and begin to sing a soothing lullaby. If the opponent resists falling asleep, Jigglypuff will endanger its own life by continuing to sing until its lungs run out of air. It is able to adjust the wavelength of its voice to match the brain waves of someone in a deep sleep. This helps ensure drowsiness in its opponents. Jigglypuff can mostly be found in lush green plains and grassy meadows.",
      "poke_type"=>["Normal","Fairy"],
      "moves"=>[
        "Sing",
        "Pound"
      ],
    },
    "40"=>{
      "name"=>"Wigglytuff",
      "attack"=>70,
      "defense"=>45,
      "description"=>"Wigglytuff resembles a pink blob with stubby arms and legs. There is a fluffy, curled tuft of fur on its head, and it has long, rabbit-like ears and large, blue eyes. A layer of tears covers its eyes, quickly washing away any debris. It is covered in pink fur with a white underbelly and ear tips. This fine layer of fur is so soft that those who touch it, including other Wigglytuff, will not want to stop. Its body is soft and rubbery, allowing it to inflate by inhaling. While it is inflated, it is able to move by bouncing or floating. Wigglytuff can be found in vivid green plains and grassy fields. Some Wigglytuff love eating Perfect Apples, as shown in Pokémon Mystery Dungeon: Explorers of Time and Explorers of Darkness.
",
      "poke_type"=>["Normal","Fairy"],
      "moves"=>[
        "Sing",
        "Pound"
      ],
    },
    "41"=>{
      "name"=>"Zubat",
      "attack"=>45,
      "defense"=>35,
      "description"=>"Zubat is a blue, bat-like Pokémon. While it lacks eyes, it has pointed ears with purple insides and a mouth with four pointed teeth. There are two pointed teeth on both the upper and lower jaws, and a male will have larger pointed teeth than the female. It has purple wing membranes support by two, elongated fingers, and two long, thin, tails.
Zubat lives in abundance in caves. It has evolved to have neither eyes nor nostrils, instead navigating through dark environments with echolocation. As demonstrated in the anime, it will leave its abode at night with a mass of other Zubat in order to seek prey. During the daytime, Zubat sleeps hanging upside down in caves, forests, or under the eaves of old buildings, avoiding sunlight at all costs. Daylight causes Zubat to become unhealthy, and prolonged exposure can even burn its skin. However, captured and trained Zubat have been recorded as being much more tenacious in the daytime, even when directly exposed to sunbeams.",
      "poke_type"=>["Poison"],
      "moves"=>[
         "Bite",
         "Wing Attack"
      ],
    },
    "42"=>{
      "name"=>"Golbat",
      "attack"=>80,
      "defense"=>70,
      "description"=>"Golbat is a large, blue bat-like Pokémon with purple wing membranes. It has small eyes with slit pupils and a massive mouth containing four fangs; females have smaller fangs than males. While its mouth seems to be otherwise empty, Golbat occasionally displays a long, purple tongue. Its pointed ears are tiny, and it has short legs with long, thin feet.
It feeds on the blood of both Pokémon and humans, and is capable of drinking over ten ounces of blood in one sitting. Golbat drinks so much blood, that its blood type will change to that of its victim following a feed. It is also gluttonous, occasionally gorging itself to the extent that it becomes too heavy to fly. Golbat is nocturnal, and can be found quite easily in caves.",
      "poke_type"=>["Poison"],
      "moves"=>[
         "Poison Fang",
         "Bite",
         "Wing Attack"
      ],
    },
    "143"=>{
      "name"=>"Aaron Wong",
      "attack"=>110,
      "defense"=>65,
      "description"=>"Aaron Wong is a huge, bipedal, dark blue-green Pokémon with a cream-colored face, belly, and feet. Its body is composed of mostly its belly, where most of its fat reserves accumulate. Its head is large, with small, pointed ears and two pointed teeth protruding from its lower jaw. It has large, hind feet with three claws and a circular brown paw pad, and its arms and five foreclaws are short.
Aaron Wong is often found in mountains and forests. It wakes up only to eat and seldom for exercises. It is not a picky eater, as its strong stomach allows it to eat even moldy food without feeling any ill effects. When hungry, it is not satisfied until it consumes 900 pounds of food. Aaron Wong is docile enough to let children and small Pokémon bounce on its large stomach.",
      "poke_type"=>["Normal"],
      "moves"=>[
         "Tackle",
         "Headbutt",
         "Snore",
         "Body Slam"
      ],
    },
    "175"=>{
      "name"=>"Leah Lin",
      "attack"=>2,
      "defense"=>1,
      "description"=>"Togepi is a small, light yellow Pokémon with a round body that is still encased in its eggshell. Togepi does not shed its shell. The egg has red and blue shapes on it. Togepi has stubby hands and round feet with two toes each. Togepi has black eyes and five spikes on its head that seem to form a crown. It also has semi-oval, brown pads on the soles of its feet.
    Togepi is able to release poison from the spikes on its head. The anime has shown that it can retract into its shell, which it usually does to sleep. It is able to siphon the positive energy of others, and then release it to those in need of it. It has a very joyful nature. As a result, it is said that it shares its joy with those who take care of it. Because of its disposition, Togepi are seen as signs of good luck, especially if a Trainer is capable of getting a sleeping Togepi to stand. Although rare in the wild, Togepi can most commonly be found living within the forests.",
      "poke_type"=>["Vegan"],
      "moves"=>[
        "Struggle",
        "Splash",

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
    ["Poison Fang", "Poison"],
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
    ["Snore","Normal"],
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
    ["Half Vegan", "Normal"],
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
    elsif num.length == 3
      national_id = "#{num}"
    end

    price = stats["attack"] + stats["defense"] * 2.45
    image_url = "product_snaps/#{num}.png"
    Product.create!(national_id: national_id, name: stats["name"], attack: stats["attack"], defense: stats["defense"], price: price, image_url: image_url, description: stats["description"])
  end
  #CREATING TYPES
  types = ["Bug" ,"Normal",	"Fire", "Fighting", "Water", "Flying",	"Grass", "Poison",	"Electric", "Ground",	"Psychic", "Rock",	"Ice", "Bug",	"Dragon", "Ghost",	"Dark", "Steel", "Fairy"]
  types.each do |type|
    Type.create!(name: type)
  end
  #CREATING CATEGORIES
  product.map do |num, stats|
    stats["poke_type"].each do |category|
      puts category
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
      puts move
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
