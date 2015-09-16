# Phase 1: User Authentication & Products List
## Rails
### Models
* User
* Product


### Controllers
* UsersController (create, new)
* SessionsController (create, new, destroy)
* Api::ProductsController (index, show, create)


### Views
* users/new.html.erb
* session/new.html.erb
* Product/show.json.jbuilder

## Backbone
### Models
* Product (parses nested `comment` association)


### Collections
* Products

### Views
* productsIndex, (compositeView, contains productIndexItem subviews)
* productIndexItem
* productShow, (compositeView, contains commentShow subviews)

## Gems/Libraries
