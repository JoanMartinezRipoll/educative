json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :color, :register_num
  json.url vehicle_url(vehicle, format: :json)
end
