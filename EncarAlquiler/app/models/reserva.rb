class Reserva < ActiveRecord::Base
	has_many :locatarios
	has_many :reservas_habitaciones
	has_many :tipos, through: :habitaciones
	validates :locatario_id, :fecha_inicio, :habitacion_id, presence: :true

end
