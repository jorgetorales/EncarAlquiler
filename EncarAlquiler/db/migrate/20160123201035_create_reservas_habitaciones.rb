class CreateReservasHabitaciones < ActiveRecord::Migration
  def change
    create_table :reservas_habitaciones do |t|
      t.integer :reserva_id
      t.integer :habitacion_id
      t.string :fecha_inicio
      t.string :fecha_fin

      t.timestamps null: false
    end
    add_foreign_key(:reservas_habitaciones, :reservas)
    add_foreign_key(:reservas_habitaciones, :habitaciones)
  end
end
