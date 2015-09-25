json.total_count @products.total_count
# json._page @products.current_page

json.products do
  json.array!(@products) do |product|
    json.partial!('product', product: product)

    poke_types = []
    product.types.each {|type| poke_types << type.name }
    json.poke_types poke_types
    json.average_star_rating product.average_star_rating
  end
end
