json.array!(@attributes) do |attribute|
  json.extract! attribute, :product_id, :title, :short_desc, :description, :picture, :price, :limit
  json.url attribute_url(attribute, format: :json)
end
