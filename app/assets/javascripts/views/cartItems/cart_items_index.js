Celadon.Views.CartItemsIndex = Backbone.CompositeView.extend({
  template: JST['cartItems/index'],

  events: {
    'click #checkout-btn': 'toggleConfirmationPage',
    'click #cancel-confirmation': 'toggleConfirmationPage',
    'click #place-order-btn': 'placeOrder'
  },

  initialize: function(options) {
    this.user = Celadon.currentUser;
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
    var that = this;
    product.fetch({
      success: function() {
        var cartItemListItem = new Celadon.Views.CartItemListItem({
          model: product,
          cartItem: cartItem
        });
        that.addSubview('ul.cart-items', cartItemListItem);
      }
    })
  },

  toggleConfirmationPage: function(e) {
    e.preventDefault();
    if ( !this.collection.length ) { return; }
    $('.modal-checkout').toggleClass('hidden')
  },

  placeOrder: function(e) {
    e.preventDefault();
    var that = this

    $.ajax({
      url: "/api/users/1/place_order",
      type: "POST",
      dataType: "json",
      success: function(data){
        Celadon.currentUser.set({
          current_subtotal: data.current_subtotal,
          number_of_cart_items: data.number_of_cart_items
        });
        Celadon.currentUser.cart_items().set(data.cart_items);
        Celadon.currentUser.ordered_items().set(data.ordered_items)
        Backbone.history.navigate('#/user/1/cart_items', { trigger: true });
        $('#order-message').toggleClass('hidden');
      }
    })
  },

  render: function() {
    this.$el.html(this.template());
    this.renderCartItems();
    return this;
  }
})
