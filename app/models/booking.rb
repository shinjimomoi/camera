# app/models/booking.rb
class Booking < ApplicationRecord
    belongs_to :user
    belongs_to :camera

    validates :user_id, :camera_id, :start_date, :end_date, presence: true
    validate :valid_date_range
    validate :no_overlapping_bookings
    validate :start_date_in_future

    # Custom validation to ensure the start_date is before the end_date
    def valid_date_range
        if start_date && end_date && start_date >= end_date
        errors.add(:start_date, "must be before the end date")
        end
    end

    # Custom validation to check for overlapping bookings
    def no_overlapping_bookings
        overlapping_bookings = Booking.where(camera_id: camera_id)
                                    .where.not(id: id)
                                    .where("(start_date, end_date) OVERLAPS (?, ?)", start_date, end_date)
        if overlapping_bookings.exists?
        errors.add(:base, "This camera is already booked for the selected dates.")
    end
end
  