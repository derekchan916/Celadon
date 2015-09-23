class User < ActiveRecord::Base
  validates :email, :fname, :lname, :session_token, presence: true
  validates :password, length: { minimum: 4, allow_nil: true }
  validates :email, uniqueness: true
  has_attached_file :image, default_url: "missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  has_many :reviews, class_name: 'Review', foreign_key: :author_id
  has_many :cart_items
  # has_many :cart_products, through: :cart_items, source: :product
  has_many :ordered_items

  ratyrate_rater

  attr_reader :password
  after_initialize :ensure_session_token

  def self.find_by_credentials(email, password)
    user = User.find_by(email: email)
    return nil if user.nil?
    user.try(:is_password?, password) ? user : nil
  end

  def self.find_or_create_by_auth_hash(auth_hash)
  user = User.find_by(
          provider: auth_hash[:provider],
          uid: auth_hash[:uid])

  unless user
    user = User.create!(
          provider: auth_hash[:provider],
          uid: auth_hash[:uid],
          fname: auth_hash[:info][:name].split.first,
          lname: auth_hash[:info][:name].split.last,
          email: "derekchan916@",
          password: SecureRandom::urlsafe_base64)
  end

  user
end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_token!
    self.session_token = SecureRandom.urlsafe_base64(16)
    self.save!
    self.session_token
  end

  def current_subtotal
    subtotal = 0

    self.cart_items.each do |cart_item|
      subtotal += (cart_item.product.price * cart_item.quantity)
    end

    subtotal
  end

  def number_of_cart_items
    count = 0

    self.cart_items.each do |cart_item|
      count += cart_item.quantity
    end
    count
  end

  protected
  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end
end
