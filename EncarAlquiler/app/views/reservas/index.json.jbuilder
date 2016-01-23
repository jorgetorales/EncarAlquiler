json.array!(@reservas) do |reserva|
  json.extract! reserva, :id, :locatario_id, :fecha_reserva
  json.url reserva_url(reserva, format: :json)
end
