class Reservation < ApplicationRecord
  validates :datetime, presence: true

  belongs_to :product
  belongs_to :user
end
