json.array!(@habitaciones) do |habitacion|
  json.extract! habitacion, :id, :tipo_id, :numero, :descripcion, :estado, :precio
  json.url habitacion_url(habitacion, format: :json)
end
