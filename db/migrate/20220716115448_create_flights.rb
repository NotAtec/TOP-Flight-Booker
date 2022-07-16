class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.date :date
      t.time :eobt

      t.timestamps
    end
  end
end
