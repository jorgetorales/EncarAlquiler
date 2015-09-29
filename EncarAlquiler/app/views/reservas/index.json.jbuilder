json.array!(@reservas) do |reserva|
  json.extract! reserva, :id, :locatario, :fecha_inicio, :habitacion
  json.url reserva_url(reserva, format: :json)
end
