class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :studio

  validates :total_price, presence: true
  validates :booked_at, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :end_must_be_after_start, presence: true

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end
end
