Celadon.Collections.CartItems = Backbone.Collection.extend({
  url: '/api/cart_items',
  model: Celadon.Models.CartItem,

  initialize: function(model, options) {
    this.product = options.product,
    this.user = options.user
  }
})
