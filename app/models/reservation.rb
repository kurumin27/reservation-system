class Reservation < ApplicationRecord
  validates :datetime, presence: { message: "を選択してください"}

  belongs_to :product
  belongs_to :user
end
