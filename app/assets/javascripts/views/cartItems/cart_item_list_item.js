Celadon.Views.CartItemListItem = Backbone.View.extend({
  tagName: 'li',
  className: 'cart-item',

  template: JST['cartItems/list_item'],

  render: function() {
    this.$el.html(this.template({ product: this.model }));
    return this;
  }
})
