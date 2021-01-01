class Product < ApplicationRecord
  validates :product_name, presence: true
  validates :price, presence: true
  
  has_many :reservation
end
