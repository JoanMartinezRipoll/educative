json.array!(@company_shareholders) do |company_shareholder|
  json.extract! company_shareholder, :id, :hrm_number
  json.url company_shareholder_url(company_shareholder, format: :json)
end
