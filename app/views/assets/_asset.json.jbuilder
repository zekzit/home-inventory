json.extract! asset, :id, :brand, :product_name, :model, :year, :purchased_date, :price, :shop_name, :has_warranty, :warranty_void_date, :created_at, :updated_at
json.url asset_url(asset, format: :json)
