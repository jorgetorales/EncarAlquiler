class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :usuario
      t.string :contrase±a

      t.timestamps null: false
    end
  end
end
