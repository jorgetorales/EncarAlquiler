class Reserva < ActiveRecord::Base
	has_many :habitaciones
	has_many :reservas_habitaciones
	belongs_to :locatario
	has_many :precios, through: :habitaciones
	belongs_to :pago

	accepts_nested_attributes_for :reservas_habitaciones, allow_destroy: true


	validates :locatario_id, :fecha_reserva, :monto, :estado, presence: true
end
