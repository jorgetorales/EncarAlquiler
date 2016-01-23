class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.integer :locatario_id
      t.string :fecha_reserva

      t.timestamps null: false
    end
    add_foreign_key(:reservas, :locatarios)
  end
end
