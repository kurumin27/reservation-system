class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, uniqueness: true
  validates :telephone, presence: true, format: {with: /\A\d{10,11}\z/}, numericality: { only_integer: true }
  validates :password, presence: true, confirmation: true

  has_many :reservations
end
