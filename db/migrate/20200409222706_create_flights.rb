class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.datetime :date
      t.integer :duration
      t.integer :price
      t.reference :from_airport
      t.reference :to_airport

      t.timestamps
    end
  end
end
