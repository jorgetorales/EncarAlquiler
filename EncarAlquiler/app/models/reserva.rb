class Reserva < ActiveRecord::Base
	belongs_to :locatario
	belongs_to :habitacion
	has_one :tipo throught :habitacion
	validates :locatario,:fecha_inicio, :habitacion, presence :true

end
