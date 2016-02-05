class CreatePagos < ActiveRecord::Migration
  def change
    create_table :pagos do |t|
      t.integer :reserva_id
      t.integer :montoapagar

      t.timestamps null: false
    end
     add_foreign_key(:pagos, :reservas)
  end
end
