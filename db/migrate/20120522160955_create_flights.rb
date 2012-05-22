class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :flight_number
      t.string :depart_code
      t.time :depart_time
      t.string :arrive_code
      t.integer :distance

      t.timestamps
    end
  end
end
