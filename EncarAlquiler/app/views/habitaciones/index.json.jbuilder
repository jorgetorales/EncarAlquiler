json.array!(@habitaciones) do |habitacion|
  json.extract! habitacion, :id, :numero, :tipo_id, :descripcion
  json.url habitacion_url(habitacion, format: :json)
end
