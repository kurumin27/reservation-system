class Product < ApplicationRecord
  validates :product_name, presence: true
  validates :price, presence: true, numericality: { only_integer: true }

  belongs_to :reservation
end
