class View < ActiveRecord::Base
  validates :user_id, :product_id, presence: true

  belongs_to :user
  belongs_to :products
end
