json.array!(@bankers) do |banker|
  json.extract! banker, :id, :name
  json.url banker_url(banker, format: :json)
end
