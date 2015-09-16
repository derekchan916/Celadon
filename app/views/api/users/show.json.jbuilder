json.extract!(@user, :id, :email, :fname, :lname)
json.image_url asset_path(@user.image.url(:original))

json.reviews do
  json.array!(@user.reviews) do |review|
    json.extract!(review, :author_id, :product_id, :star_rating, :title, :body, :created_at)
  end
end
