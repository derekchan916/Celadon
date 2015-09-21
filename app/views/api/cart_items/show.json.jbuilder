json.extract!(current_user, :id, :email, :fname, :lname)
# json.image_url asset_path(@user.image.url(:original))
json.number_of_cart_items current_user.number_of_cart_items

json.reviews do
  json.array!(current_user.reviews) do |review|
    json.extract!(review, :id, :author_id, :product_id, :star_rating, :title, :body)

    json.date review.created_at.strftime("%A, %B %d, %I:%M %p")
  end
end

json.cart_items do
  json.array!(current_user.cart_items(true)) do |cart_item|
    json.extract!(cart_item, :id, :user_id, :product_id, :quantity)

    json.date cart_item.updated_at.strftime("%B %d, %Y")
  end
end

json.current_subtotal current_user.current_subtotal

json.ordered_items do
  json.array!(current_user.ordered_items) do |ordered_item|
    json.extract!(ordered_item, :id, :user_id, :product_id, :quantity, :order_id)

    json.date ordered_item.created_at.strftime("%B %d, %Y")
  end
end
