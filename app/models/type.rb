class Type < ActiveRecord::Base
  TYPES = ["Bug" ,"Normal",	"Fire", "Fighting", "Water", "Flying",	"Grass", "Poison",	"Electric", "Ground",	"Psychic", "Rock",	"Ice", "Bug",	"Dragon", "Ghost",	"Dark", "Steel",	"Fairy", "Vegan"]
  validates :name, inclusion: { in: TYPES }, presence: true

  has_many :moves
  has_many :categories
  has_many :products, through: :categories, source: :product
end
