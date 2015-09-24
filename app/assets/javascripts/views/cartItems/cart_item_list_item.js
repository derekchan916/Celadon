Celadon.Views.CartItemListItem = Backbone.View.extend({
  tagName: 'li',
  className: 'cart-item group',

  template: JST['cartItems/list_item'],

  events: {
    'click #cart-product-delete': 'deleteCartItem'
  },

  render: function() {
    this.$el.html(this.template({ product: this.model }));
    return this;
  },

  deleteCartItem: function(e) {
    e.preventDefault;
    this.model.destroy({
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
