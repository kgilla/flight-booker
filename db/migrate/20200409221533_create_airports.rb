class CreateAirports < ActiveRecord::Migration[5.2]
  def change
    create_table :airports do |t|
      t.string :name
      t.string :airport_code
      t.string :location

      t.timestamps
    end
  end
end
