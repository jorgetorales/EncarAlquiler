json.array!(@reservas) do |reserva|
  json.extract! reserva, :id, :locatario_id, :fecha_reserva, :estado, :monto
  json.url reserva_url(reserva, format: :json)
end
