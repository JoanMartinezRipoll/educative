json.array!(@weight_transactions) do |weight_transaction|
  json.extract! weight_transaction, :id, :iban, :weight, :banker_id
  json.url weight_transaction_url(weight_transaction, format: :json)
end
