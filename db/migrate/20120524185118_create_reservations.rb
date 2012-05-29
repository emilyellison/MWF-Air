class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :flight_id
      t.date :depart_date
      t.integer :credit_card_number

      t.timestamps
    end
  end
end
