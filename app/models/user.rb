class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, uniqueness: true
  validates :telephone, presence: true, format: {with: /\A\d{10,11}\z/}, numericality: { only_integer: true }
  validates :email, presence: true
  validates :password, length: {minimum: 6}, presence: true
  validates :password, presence: true, confirmation: true

  has_many :orders
end
