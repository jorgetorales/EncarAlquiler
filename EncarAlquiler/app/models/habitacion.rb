class Habitacion < ActiveRecord::Base
	#ver si es plural
	has_many :reservas_habitaciones
	belongs_to :tipo
	has_many :clientes, through: :reservas
	validates :numero, :tipo_id, presence: :true
	#validates :precio, numericality: {greather_than: 0}

end
