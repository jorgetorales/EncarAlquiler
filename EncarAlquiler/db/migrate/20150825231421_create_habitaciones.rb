class CreateHabitaciones < ActiveRecord::Migration
  def change
    create_table :habitaciones do |t|
      t.integer :numero
      t.integer :tipo_id
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
