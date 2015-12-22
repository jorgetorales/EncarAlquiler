class AddPrecioToHabitaciones < ActiveRecord::Migration
  def change
    add_column :habitaciones, :precio, :int
  end
end
