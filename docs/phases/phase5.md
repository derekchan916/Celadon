# Phase 5: Searching for Products and Listing Products Using Carousel, Thumbnail Images, Allow Follows, Recommended(!!)
# vendor Ids. If finished early, then... AMAZON PRIME? & ONE CLICK PURCHASING?

## Rails
### Models
* Follow

### Controllers
* Api::FollowsController (create, destroy)
Api::ProductsController (search)

### Views

## Backbone
### Models
* Product (parses nested `follows` association)

### Collections

### Views
* productFollowWidget
* productShow, (compositeView, contains productFollowWidget subview)

## Gems/Libraries
