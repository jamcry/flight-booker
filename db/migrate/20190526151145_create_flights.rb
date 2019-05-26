class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :from_id
      t.integer :to_id
      t.datetime :depart_at
      t.integer :duration

      t.timestamps
    end
    add_index :flights, :from_id
    add_index :flights, :to_id
  end
end
