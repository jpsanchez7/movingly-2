class CreateTurns < ActiveRecord::Migration[6.0]
  def change
    create_table :turns do |t|
      t.string :weekday
      t.string :departure_address
      t.time :departure_time
      t.string :turn_type
      t.integer :people_limit
      t.string :address

      t.timestamps
    end
  end
end
