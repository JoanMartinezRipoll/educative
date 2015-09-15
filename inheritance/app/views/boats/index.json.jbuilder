json.array!(@boats) do |boat|
  json.extract! boat, :id, :sail_lenght
  json.url boat_url(boat, format: :json)
end
