json.array!(@pagos) do |pago|
  json.extract! pago, :id, :reserva_id, :montoapagar
  json.url pago_url(pago, format: :json)
end
