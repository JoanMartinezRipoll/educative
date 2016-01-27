json.array!(@color_transactions) do |color_transaction|
  json.extract! color_transaction, :id, :iban, :color, :banker_id
  json.url color_transaction_url(color_transaction, format: :json)
end
