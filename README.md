# Celadon
[Live](www.celadon.online)

## Custom SQL requests

In order to present a filtered product list, custom SQL requests in the controller are used to send back a specified list.
```ruby
  if params[:categories]
    @products = @products.joins(:categories, :types).where(types: {name: params[:categories]}).uniq
  end
```
See the [Products Controller](https://github.com/derekchan916/celadon/blob/master/app/controllers/api/products_controller.rb) for details
See it in action [here](http://www.celadon.online/#/products)

## Pagination using Kaminari

Page requests are sent through custom fetches.
```javascript
  this.collection.fetch({
    data: {
      page: this.collection.pageNum + 1,
      type: "fetch_by_page",
      categories: this.collection.categories
    },
    success: function() {
      this.collection.pageNum = this.collection.pageNum + 1;
      window.scrollTo(0, 0);
      this.render();
    }.bind(this)
  });
```
See the [Products Index](https://github.com/derekchan916/celadon/blob/master/app/assets/javascripts/views/products/product_index.js) for details.
See it in action [here](http://www.celadon.online/#/products)

## Other features
- A single-page Backbone.js app built on a RESTful Ruby on Rails architecture
- OmniAuth and User Auth stored through BCrypt
- Rate and Review products using RatyRate Gem
- Add products to cart and checkout using custom AJAX methods
- Filter search using custom AJAX requests
- Prefix search using PgSearch
- Image uploads using AWS via Paperclip
- Deep product layout using multiple associations

## Bonus Features (TBD)
- [ ] Amazon Prime
- [X] Pagination/infinite scroll
- [ ] Multiple sessions/session management
- [X] User avatars
- [ ] Algorithm for "Recommended Products"
- [ ] Thumbnails for product images
