class Pago < ActiveRecord::Base
	has_many :reservas
	validates :reserva_id, :montoapagar, presence: :true
end
