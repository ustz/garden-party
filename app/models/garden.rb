class Garden < ApplicationRecord
  belongs_to :user

  has_many :bookings
  has_many :users, through: :bookings

  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :city, presence: true

end
