class Garden < ApplicationRecord
  GCAPACITY = ["Less than 10", "10 - 49", "50 - 100", "More than 100"]

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  belongs_to :user

  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :user_id, presence: true
  validates :capacity, inclusion: { in: GCAPACITY }
  mount_uploader :photo, PhotoUploader
end
