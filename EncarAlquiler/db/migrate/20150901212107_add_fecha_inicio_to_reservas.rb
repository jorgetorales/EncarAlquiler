class AddFechaInicioToReservas < ActiveRecord::Migration
  def change
    add_column :reservas, :fecha_inicio, :string
    add_column :reservas, :fecha_fin, :string
  end
end
