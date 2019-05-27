class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :passenger_id
      t.integer :booking_id

      t.timestamps
    end
    add_index :tickets, [:passenger_id, :booking_id], unique: true
  end
end
