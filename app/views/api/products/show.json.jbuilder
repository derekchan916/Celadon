json.partial!('product', product: @product)

json.reviews do
  json.array!(@product.reviews) do |review|
    json.extract!(review, :author_id, :product_id, :star_rating, :title, :body)
  end
end
