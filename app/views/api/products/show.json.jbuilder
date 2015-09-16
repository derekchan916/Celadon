json.partial!('product', product: @product)
json.average_star_rating @product.average_star_rating
json.number_of_reviews @product.number_of_reviews

json.reviews do
  json.array!(@product.reviews) do |review|
    json.extract!(review, :author_id, :product_id, :star_rating, :title, :body, :created_at)

    json.extract!(review.author, :fname, :lname)
  end
end
