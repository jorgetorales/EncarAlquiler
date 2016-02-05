json.array!(@reservas_habitaciones) do |reserva_habitacion|
  json.extract! reserva_habitacion, :id, :reserva_id, :habitacion_id, :fecha_inicio, :fecha_fin, :precio
  json.url reserva_habitacion_url(reserva_habitacion, format: :json)
end
