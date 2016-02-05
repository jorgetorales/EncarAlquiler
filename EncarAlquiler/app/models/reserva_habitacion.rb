class ReservaHabitacion < ActiveRecord::Base
	belongs_to :habitaciones
	belongs_to :reservas

	validates :reserva_id, presence: false
	validates :habitacion_id, presence: true
	validates :fecha_inicio, presence: true
	validates :fecha_fin, presence: true
	validates :precio, presence: true
end
