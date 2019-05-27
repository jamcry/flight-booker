class Booking < ApplicationRecord
  has_many   :tickets
  has_many   :passengers, through: :tickets
  belongs_to :flight
end
