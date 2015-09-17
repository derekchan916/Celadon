Celadon.Views.CartItemListItem = Backbone.View.extend({
  tagName: 'li',
  className: 'cart-item',

  template: JST['cartItems/list_item'],

  events: {
    'click #cart-product-delete': 'deleteCartItem'
  },

  initialize: function(options) {
    this.cartItem = options.cartItem
  },

  render: function() {
    this.$el.html(this.template({ product: this.model }));
    return this;
  },

  deleteCartItem: function(e) {
    e.preventDefault;
    var user_id = this.cartItem.get('user_id');
    this.cartItem.destroy();
    Backbone.history.navigate('#/user/' + user_id + '/cart_items', //don't need to send up user_id later
      { trigger: true })
  }
})
