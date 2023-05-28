class User < ApplicationRecord
    has_many :cameras
    has_many :bookings
    validates :name, :email, :password, presence: true
    validates :email, uniqueness: true
    validates :password, length: { minimum: 4 }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end