class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :studio

  validates :total_price, presence: true
  validates :booked_at, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  #validates :end_must_be_after_start, presence: true

  private

  # def end_must_be_after_start
  #   if start_time >= end_time
  #     errors.add(:end_time, "must be after start time!")
  #   end
  # end
end
