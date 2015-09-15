json.array!(@animals) do |animal|
  json.extract! animal, :id, :name, :weight
  json.url animal_url(animal, format: :json)
end
