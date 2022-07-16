class ChangeEobtToString < ActiveRecord::Migration[7.0]
  def self.up
    change_table :flights do |t|
      t.change :eobt, :string
    end
  end

  def self.down
    change_table :flights do |t|
      t.change :eobt, :date
    end
  end
end
