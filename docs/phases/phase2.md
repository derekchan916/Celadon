# Phase 2: Shopping Cart & Commenting on Products (with Ratings), Edit User
## Rails
### Models
* CartItem
* Comment

### Controllers
* Api::CartItemsController (create, update, destroy, index)
* Api::CommentsController (create, destroy, update)

### Views

## Backbone
### Models
* User (parses nested 'cartItems' association)
* CartItem
* Comment

### Collections
* CartItems
* Comments

### Views

* userShow (compositeView, contains cartItemsShow subviews)
* cartItemsShow
* commentShow, (contains commenting form in template)

## Gems/Libraries
