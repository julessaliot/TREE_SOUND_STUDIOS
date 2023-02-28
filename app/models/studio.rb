class Studio < ApplicationRecord
  # has_many :bookings, dependent: :destroy
  # has_many :users, through: :bookings
  belongs_to :user

  validates :name, :description, :price_per_hour, :is_soundproof, :location, :max_occupancy, presence: true
end
