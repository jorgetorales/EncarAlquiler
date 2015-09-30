class CreateReservaHabitaciones < ActiveRecord::Migration
  def change
    create_table :reserva_habitaciones do |t|
      t.integer :habitacion_id
      t.integer :reserva_id

      t.timestamps null: false
    end
  end
end
