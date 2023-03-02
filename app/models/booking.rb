class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :studio

  validates :total_price, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validate :end_date_after_start_date

  private


  def end_date_after_start_date
    return if end_time.blank? || start_time.blank?

    if end_time < start_time
      errors.add(:end_time, "must be after the start time")
    end
  end
end
