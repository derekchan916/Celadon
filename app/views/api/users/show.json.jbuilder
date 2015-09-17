json.extract!(@user, :id, :email, :fname, :lname)
json.image_url asset_path(@user.image.url(:original))

json.reviews do
  json.array!(@user.reviews) do |review|
    json.extract!(review, :id, :author_id, :product_id, :star_rating, :title, :body, :created_at)
  end
end

json.cart_items do
  json.array!(@user.cart_items) do |cart_item|
    json.extract!(cart_item, :id, :product_id, :quantity)
  end
end
