# app/models/camera.rb
class Camera < ApplicationRecord
    belongs_to :user
    has_many :bookings
    validates :brand, :model, presence: true
    validates :price, numericality: { greater_than: 0 }
    validates :condition, inclusion: { in: ['new', 'used'] }
    validates :brand, :model, length: { maximum: 100 }
end
  