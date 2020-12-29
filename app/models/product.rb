class Product < ApplicationRecord
  validates :product_name, presence: true
  validates :price, presence: true

  belongs_to :reservation
end
