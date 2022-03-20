json.extract! product, :id, :name, :price, :category_id_id, :stock, :created_at, :updated_at
json.url product_url(product, format: :json)
