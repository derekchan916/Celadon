# Celadon

[Heroku link][heroku]

[heroku]:

## Updated List
Current User for shopping cart on Backbone side
Current User for reviews on Rails side
Change headers to backbone
Change the price to floating number
Check to see if there is already that product in the cart, add it if there is.
Make sure after you purchase something it gets deleted from the product list?
  To do this, change the products, no levels, no stats etc. But have stock.
Create Table for category, area, and vendor

## Minimum Viable Product
Danube is a clone of Amazon built on Rails and Backbone. Users can:

- [ ] Create accounts
- [ ] Create sessions (log in)
- [ ] View Products
- [ ] Filter / Search Products
- [ ] Have a shopping cart
- [ ] Rate the products
- [ ] Purchase and view order history

## Design Docs
* [View Wireframes][views]
* [DB schema][schema]

[views]: ./docs/views.md
[schema]: ./docs/schema.md

## Implementation Timeline
# By the end of every phase, I will work on the CSS aspects.

# Phase 1: User Authentication & Products List (~2 days)
I will implement user authentication in Rails based on the practices learned at
App Academy. The most important aspect of this will be - users do not have to be signed in in order to browse products. The user has to be signed in in order to use any of the other functions (view shopping cart, purchase, comment etc). The most important part of this phase will be pushing the app to Heroku and
ensuring that everything works before moving on to phase 2.

[Details][phase-one]

# Phase 2: Shopping Cart & Commenting on Products (with Ratings) (~2 days)
I will be adding the same functions of the shopping cart and following a
product. Following will be similar to the Like Demo. Just like Amazon, there
should just be a button that lets you click "Add to cart" when viewing a
product. The user should also be able to view his/her shopping cart on the user
page.

[Details][phase-two]

### Phase 3: Filtering, and Checkout  (~2 days)
Filtering will be the heart of my website. I plan on making a detailed filtering
checkbox system that will send a request to the products controller, allowing
for filtering using SQL. The response will be parsed each time the user clicks
a checkbox.

[Details][phase-three]

# Phase 4: Orders (~1 day)
I will add a new table for Orders, so that the user can look at his/her past
orders. This will be parsed from the users on the backbone side, and the user
will be able to view the past orders from the user page. Orders will only be
created after the checkout phase from the shopping cart.

[Details][phase-four]

# Phase 5: Recommended!! Searching for Products and Listing Products Using
# Carousel, Thumbnail Images (~2 the rest of the time)
The main part here would be to create a "search engine" in the main page. This
will be similar to using an AJAX request every time the user inputs a letter.
If there is time I will continue with making a Carousel for different sections
on the rootUrl page, and allowing for multiple images. Lastly, I will create
a Vendor page in order to create products.

[Details][phase-five]

### Bonus Features (TBD)
- [ ] Amazon Prime
- [ ] Pagination/infinite scroll
- [ ] Multiple sessions/session management
- [ ] User avatars
- [ ] Algorithm for "Recommended Products"

[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md
