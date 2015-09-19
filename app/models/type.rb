class Type < ActiveRecord::Base
  TYPES = ["bug" ,"normal",	"fire", "fighting", "water", "flying",	"grass", "poison",	"electric", "ground",	"psychic", "rock",	"ice", "bug",	"dragon", "ghost",	"dark", "steel",	"fairy"]
  validates :name, inclusion: { in: TYPES }

  has_many :moves
  has_many :categories
  has_many :products, through: :categories, source: :product
end
