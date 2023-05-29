class User < ApplicationRecord
  has_many :cameras
  has_many :bookings

  validates :name, :email, :password, presence: true
  validates :email, uniqueness: true
  validates :password, length: { minimum: 4, maximum: 20 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validate :custom_password_validation

  def custom_password_validation
    unless password =~ /\d/ && password =~ /[A-Za-z]/
      errors.add(:password, "must contain at least one letter and one digit")
    end
  end
end
