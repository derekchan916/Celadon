json.extract!(product, :id, :national_id, :name, :price, :discount, :level,
  :attack, :defense, :poke_type, :description, :moves)
json.image_url asset_path(product.image_url)
