class Locatario < ActiveRecord::Base
	has_many:reservas
	has_many:habitaciones, throught :reservas
end 
