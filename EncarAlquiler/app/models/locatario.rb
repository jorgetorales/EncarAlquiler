class Locatario < ActiveRecord::Base
	has_many :reservas
	has_many :habitaciones, through: :reservas
	validates :nombre, :apellido, :ci, :telefono, presence: :true
	
end 
