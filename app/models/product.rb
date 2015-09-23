class Product < ActiveRecord::Base
  include DateFormatable

  include PgSearch
  multisearchable against: [:name, :national_id]

  validates :national_id, :name, :price, :attack, :defense, :image_url, :description, presence: true
  validates :national_id, uniqueness: true
  validates :price, :attack, :defense, numericality: true

  has_many :reviews, class_name: 'Review', foreign_key: :product_id
  has_many :cart_items
  has_many :ordered_items
  has_many :pokemoves
  has_many :moves, through: :pokemoves, source: :move
  has_many :categories
  has_many :types, through: :categories, source: :type
  has_many :move_types, through: :moves, source: :type
  has_many :views
  # has_one :evolution_stage, class_name: "Evolution", foreign_key: :product_id
  # has_one :evolution, through: :evolution_stage, source: :evolution

  ratyrate_rateable "restaurant"

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

  def number_of_views
    self.views.count
  end

  # def number_of_uniq_views
  #   self.views.select(:user_id).distinct.count
  # end
end
