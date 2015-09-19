class Pokemove < ActiveRecord::Base
  validates :product_id, :move_id, presence: true

  belongs_to :product
  belongs_to :move
end
