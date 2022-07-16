class CreateAirportFlightReferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :flights, :adep
    add_reference :flights, :ades
  end
end
