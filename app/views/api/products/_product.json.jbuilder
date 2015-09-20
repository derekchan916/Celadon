json.extract!(product, :id, :national_id, :name, :price, :discount, :attack, :defense, :description, :created_at)
json.image_url asset_path(product.image_url)
json.moves @moves
json.poke_types @poke_types

# json.poke_types do
#   json.array!(product.types) do |type|
#     json.extract!(type, :name)
#   end
# end

# json.moves do
#   json.array!(product.moves) do |move|
#     json.extract!(move, :name)
#   end
# end
