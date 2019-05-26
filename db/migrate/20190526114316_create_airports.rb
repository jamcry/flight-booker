class CreateAirports < ActiveRecord::Migration[5.2]
  def change
    create_table :airports do |t|
      t.string :code
      t.string :full_name

      t.timestamps
    end
    add_index :airports, :code
  end
end
