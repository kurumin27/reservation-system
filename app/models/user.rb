class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.password_confirmation = user.password
      user.name = "ゲスト"
      user.telephone = "08012345678"
    end
  end

  validates :name, presence: true, uniqueness: true
  validates :telephone, presence: true, format: { with: /\A\d{10,11}\z/ }
  validates :password, presence: true, confirmation: true

  has_many :reservations, dependent: :destroy
end
