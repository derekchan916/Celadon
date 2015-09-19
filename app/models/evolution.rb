class Evolution < ActiveRecord::Base
  validates :product_id, :evolution_id, presence: true

  belongs_to :product
  belongs_to(:evolution, class_name: 'Product', foreign_key: :evolution_id)
end
