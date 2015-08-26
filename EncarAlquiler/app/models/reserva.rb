class Reserva < ActiveRecord::Base
	belongs_to :locatario
	belongs_to :habitacion
	has_one :tipo throught :habitacion
	validates :cliente,:fecha_inicio, presence :true

end
