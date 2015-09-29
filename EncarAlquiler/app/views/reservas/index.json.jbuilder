json.array!(@reservas) do |reserva|
  json.extract! reserva, :id, :locatario, :fecha_inicio, :fecha_fin, :habitacion
  json.url reserva_url(reserva, format: :json)
end
