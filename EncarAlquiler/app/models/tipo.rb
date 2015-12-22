class Tipo < ActiveRecord::Base
	has_many :habitaciones
	validates :nombre, presence: :true
end
