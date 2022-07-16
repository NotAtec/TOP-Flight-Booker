class Airport < ApplicationRecord
  has_many :departing_flights, foreign_key: 'adep_id', class_name: 'Flight'
  has_many :arriving_flights, foreign_key: 'ades_id', class_name: 'Flight'
end
