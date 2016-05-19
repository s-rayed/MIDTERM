class User < ActiveRecord::Base

  has_many :subscriptions
  has_many :products, through: :subscriptions

  validates :first_name, :last_name, presence: true, length: {minimum: 2, maximum: 25}
  validates :email, presence: true
  validates :address, :city, :province, :postal_code, :paypal_email, presence: true
  validates :password, presence: true, length: {minimum: 2}

end