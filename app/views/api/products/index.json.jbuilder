# json.total_count @search_results.total_count

json.array!(@products) do |product|
  json.partial!('product', product: product)

  poke_types = []
  product.types.each {|type| poke_types << type.name }
  json.poke_types poke_types
  json.average_star_rating product.average_star_rating
end
