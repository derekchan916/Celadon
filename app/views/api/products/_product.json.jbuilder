json.extract!(product, :id, :national_id, :name, :price, :discount, :attack, :defense, :description, :created_at)
json.image_url asset_path(product.image_url)
json.moves @moves
json.poke_types @poke_types
json.number_of_views product.number_of_views
json.number_of_uniq_views product.number_of_uniq_views
