json.array!(@person_shareholders) do |person_shareholder|
  json.extract! person_shareholder, :id, :last_name, :birthdate
  json.url person_shareholder_url(person_shareholder, format: :json)
end
