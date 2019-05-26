class AddCityToAirports < ActiveRecord::Migration[5.2]
  def change
    add_column :airports, :city, :string
  end
end
