class Garden < ApplicationRecord
  belongs_to :user

  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :user_id, presence: true
  mount_uploader :photo, PhotoUploader
end
