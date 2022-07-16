class BookingPaxFlightReferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :flight
    add_reference :passengers, :booking
  end
end
