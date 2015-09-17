Celadon.Views.CartItemsIndex = Backbone.CompositeView.extend({
  template: JST['cartItems/index'],

  initialize: function(options) {
    this.user = options.user;
    this.listenTo(this.user, 'sync', this.render);
  },

  renderCartItems: function() {
    this.collection.each(function(cartItem) {
      this.addCartItemSubview(cartItem);
    }.bind(this));
  },

  addCartItemSubview: function(cartItem) {
    var product_id = cartItem.get('product_id');
    var product = new Celadon.Models.Product({ id: product_id });
    product
    var that = this;
    product.fetch({
      success: function() {
        var cartItemListItem = new Celadon.Views.CartItemListItem({
          model: product
        });
        that.addSubview('ul.cart-items', cartItemListItem);
      }
    })
  },

  render: function() {
    this.$el.html(this.template());
    this.renderCartItems();
    return this;
  }
})
