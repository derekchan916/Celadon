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
  has_many :cart_items
  has_many :ordered_items

  def average_star_rating
    ratings = []
    self.reviews.each do |review|
      ratings << review.star_rating
    end

    ratings.empty? ? 0 : ratings.inject(&:+) / ratings.count.to_f
  end

  def number_of_reviews
    self.reviews.count
  end
end
