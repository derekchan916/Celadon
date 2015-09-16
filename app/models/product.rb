class Product < ActiveRecord::Base
  TYPES = [
    "fire",
    "electric",
    "normal",
    "ghost",
    "psychic",
    "water",
    "bug",
    "dragon",
    "grass",
    "fighting",
    "ice",
    "flying",
    "poison",
    "ground",
    "rock",
    "steel"
  ].sort

  validates :national_id, :name, :price, :level, :attack, :defense,
    :poke_type, :moves, :image_url, presence: true
  validates :national_id, uniqueness: true
  validates :price, :level, :attack, :defense, numericality: true
  validates :poke_type, inclusion: { in: TYPES }

  has_many :reviews, class_name: 'Review', foreign_key: :product_id
end
