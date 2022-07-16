class Flight < ApplicationRecord
  belongs_to :adep, class_name: 'Airport'
  belongs_to :ades, class_name: 'Airport'
  has_many :bookings
end
