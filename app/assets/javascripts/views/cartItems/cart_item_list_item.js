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
    this.$el.html(this.template({ product: this.model, cartItem: this.cartItem }));
    return this;
  },

  deleteCartItem: function(e) {
    e.preventDefault;
    this.cartItem.destroy({
      success: function(model, data) {
        Celadon.currentUser.set({
          current_subtotal: data.subtotal,
          number_of_cart_items: data.number_of_cart_items
        })
        Backbone.history.navigate('#/user/' + Celadon.currentUser.id + '/cart_items',
          { trigger: true })
      }
    });

  }
})
