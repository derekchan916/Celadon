class Review < ActiveRecord::Base
  include DateFormatable

  validates :author_id, :product_id, :star_rating, :title, :body, presence: true
  validates :star_rating, numericality: true, inclusion: { in: (0..5) }
  validates :author_id, uniqueness: { scope: :product_id,
    message: "You are only allowed to comment once."}

  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :product, class_name: 'product', foreign_key: :product_id

  def self.average_rating
  end
end
