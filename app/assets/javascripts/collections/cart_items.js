Celadon.Collections.CartItems = Backbone.Collection.extend({
  url: '/api/cart_items',
  model: Celadon.Models.CartItem,

  comparator: function(cartItem){
    return cartItem.get('updated_at');
  },

  initialize: function(model, options) {
    this.product = options.product,
    this.user = options.user
  },

  comparator: function(cartItem) {
    return cartItem.get('updated_at')
  }
})
