class Reservation < ApplicationRecord
  validates :date, presence: true
  validates :time, presence: true
  validates :product_name, presence: true

  has_one :product
  belongs_to :user
end
