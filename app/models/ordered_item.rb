class OrderedItem < ActiveRecord::Base
  validates :product_id, :user_id, :quantity, :order_id, presence: true
  validates :product_id, :user_id, :quantity, numericality: true

  belongs_to :user
  belongs_to :product

  after_initialize :ensure_order_id

  private
  def ensure_order_id
    self.order_id ||= rand(10 ** 17).to_s.insert(3,'-').insert(11,'-')
  end
end
