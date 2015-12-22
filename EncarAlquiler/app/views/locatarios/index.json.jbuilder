json.array!(@locatarios) do |locatario|
  json.extract! locatario, :id, :nombre, :apellido, :ci, :telefono, :email
  json.url locatario_url(locatario, format: :json)
end
