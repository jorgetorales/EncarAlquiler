class Habitacion < ActiveRecord::Base
	has_many :reservas 
	belongs_to :tipo
	has_many :clientes, through: :reservas
	validates :numero, :tipo_id, presence: :true
	validates :precio, numericallity: {greather_than: 0}

end
