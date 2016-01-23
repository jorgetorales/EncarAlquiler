class CreateHabitaciones < ActiveRecord::Migration
  def change
    create_table :habitaciones do |t|
      t.integer :tipo_id
      t.integer :numero
      t.string :descripcion
      t.string :estado
      t.integer :precio

      t.timestamps null: false
    end
    add_foreign_key(:habitaciones, :tipos)
  end
end
