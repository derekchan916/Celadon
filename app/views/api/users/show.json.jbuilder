json.extract!(@user, :id, :email, :fname, :lname)
json.image_url asset_path(@user.image.url(:original))
json.current_subtotal @user.current_subtotal
json.number_of_cart_items @user.number_of_cart_items

json.reviews do
  json.array!(@user.reviews) do |review|
    json.extract!(review, :id, :author_id, :product_id, :star_rating, :title, :body, :created_at)
  end
end

json.cart_items do
  json.array!(@user.cart_items) do |cart_item|
    json.extract!(cart_item, :id, :user_id, :product_id, :quantity, :updated_at)
  end
end

json.ordered_items do
  json.array!(@user.ordered_items) do |ordered_item|
    json.extract!(ordered_item, :id, :user_id, :product_id, :quantity, :created_at, :order_id)
  end
end
