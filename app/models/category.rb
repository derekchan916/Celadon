class Category < ActiveRecord::Base
  validates :product_id, :type_id, presence: true

  belongs_to :product
  belongs_to :type
end
