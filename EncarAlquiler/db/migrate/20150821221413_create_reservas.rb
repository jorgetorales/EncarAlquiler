class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.integer :locatario_id
      t.integer :habitacion_id
      t.integer :usuario_id

      t.timestamps null: false
    end
  end
end
