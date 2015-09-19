class Move < ActiveRecord::Base
  validates :name, :type_id, presence: true

  belongs_to :type
  has_many :pokemoves
  has_many :products, through: :pokemoves, source: :product
end
