json._page @search_results.current_page

json.total_count @search_results.count
json.results @search_results.map(&:searchable) do |model|
  # json.partial! model
  # if model.class == User
  #   json.partial! "api/users/user", user: model
  # else
  #   json.partial! "api/posts/post", post: model
  # end
  json.partial! "api/products/product", product: model
  json._type "Product"

  poke_types = []
  model.types.each {|type| poke_types << type.name }
  json.poke_types poke_types
  json.average_star_rating model.average_star_rating
end
