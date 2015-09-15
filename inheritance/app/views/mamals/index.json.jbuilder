json.array!(@mamals) do |mamal|
  json.extract! mamal, :id, :pregnancy_time
  json.url mamal_url(mamal, format: :json)
end
