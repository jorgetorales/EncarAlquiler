class ReservaHabitacion < ActiveRecord::Base
	belong_to :reserva
	belong_to :habitacion
end
