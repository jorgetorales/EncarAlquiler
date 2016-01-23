class Habitacion < ActiveRecord::Base
	has_many :reservas
	belongs_to :tipo
	has_many :locatarios, through: :reservas
	validates :numero, :tipo_id, :estado, :precio, presence: :true
end
