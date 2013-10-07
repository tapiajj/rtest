json.array!(@products) do |product|
  json.extract! product, :title, :description, :picture, :owner_id
  json.url product_url(product, format: :json)
end
