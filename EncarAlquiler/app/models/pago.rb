class Pago < ActiveRecord::Base
	has_many :reservas
	has_many :reservas_habitaciones
	has_many :locatarios, through: :reservas_habitaciones
	validates :reserva_id, :montoapagar, presence: :true
end
