json.array!(@reservas) do |reserva|
  json.extract! reserva, :id, :locatario_id, :fecha_inicio, :fecha_fin, :habitacion_id
  json.url reserva_url(reserva, format: :json)
end
