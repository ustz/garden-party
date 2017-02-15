class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :garden
  validates :accepts, presence: true
  validates :checkin_at, presence: true
  validates :checkout_at, presence: true
end
