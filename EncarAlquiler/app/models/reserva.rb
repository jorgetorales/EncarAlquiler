class Reserva < ActiveRecord::Base
	has_many :habitaciones
	has_many :reservas_habitaciones
	has_many :locatarios
	has_many :habitaciones, through: :reservas_habitaciones

	accepts_nested_attributes_for :reservas_habitaciones, allow_destroy: true


	validates :locatario_id, :fecha_reserva, :monto, presence: true
end
