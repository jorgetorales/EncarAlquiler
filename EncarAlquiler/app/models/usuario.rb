class Usuario < ActiveRecord::Base
	has_many :reserva
	validates :nombre, :contrasena, presence: :true
end
