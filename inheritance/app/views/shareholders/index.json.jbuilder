json.array!(@shareholders) do |shareholder|
  json.extract! shareholder, :id, :name, :trustee_id
  json.url shareholder_url(shareholder, format: :json)
end
