class Habitacion < ActiveRecord::Base
	has_many:reservas 
	belongs_to:tipo
	has_many:clientes, through:reservas

end
