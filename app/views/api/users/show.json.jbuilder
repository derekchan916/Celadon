json.extract!(current_user, :id, :email, :fname, :lname)
json.image_url asset_path(current_user.image.url(:original))
