class Reserva < ActiveRecord::Base
	balongs_to:habitacion
	balongs_to:locatario
	balongs_to:usuario
end
