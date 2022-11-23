class Dev < ApplicationRecord
  belongs_to :user
  has_many :bookings

  has_one_attached :avatar

  validates :name, presence: true
  validates :city, presence: true
  validates :age, presence: true
  validates :language, presence: true
  validates :price_per_day, presence: true
end
