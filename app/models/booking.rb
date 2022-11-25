class Booking < ApplicationRecord
  belongs_to :dev
  belongs_to :user

  validates :date_on, uniqueness: true

end
