class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :gardens, dependent: :destroy
  has_many :bookings

  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true
end
