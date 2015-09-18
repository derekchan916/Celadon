json.extract!(current_user, :id, :fname, :lname, :email)
json.current_subtotal current_user.current_subtotal
json.number_of_cart_items current_user.number_of_cart_items
