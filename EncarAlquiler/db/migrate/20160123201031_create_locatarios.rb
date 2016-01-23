class CreateLocatarios < ActiveRecord::Migration
  def change
    create_table :locatarios do |t|
      t.string :nombre
      t.string :apellido
      t.integer :ci
      t.integer :telefono
      t.string :email

      t.timestamps null: false
    end
  end
end
