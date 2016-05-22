class Product < ActiveRecord::Base

  has_many :subscriptions, dependent: :destroy
  has_many :users, through: :subscriptions

end