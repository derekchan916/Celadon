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
    this.collection.sort().each(function(cartItem) {
      this.addCartItemSubview(cartItem);
    }.bind(this));
  },

  addCartItemSubview: function(cartItem) {
    var cartItemListItem = new Celadon.Views.CartItemListItem({
      model: cartItem
    })

    this.addSubview('ul.cart-items', cartItemListItem);
  },

  toggleConfirmationPage: function(e) {
    e.preventDefault();
    if ( !this.collection.length ) { return; }
    $('.modal-checkout').toggleClass('hidden')
  },

  placeOrder: function(e) {
    e.preventDefault();
    Backbone.history.navigate('#/user/'+ this.user.id + '/cart_items', { trigger: true });

    $("body").append("<div class='poke-block'><i class='icon-pokeball'/></div>")
    var that = this
    $.ajax({
      url: "/api/users/" + that.user.id + "/place_order",
      type: "POST",
      dataType: "json",
      success: function(data){
        Celadon.currentUser.set({
          current_subtotal: data.current_subtotal,
          number_of_cart_items: data.number_of_cart_items
        });
        Celadon.currentUser.cart_items().set(data.cart_items);
        Celadon.currentUser.ordered_items().set(data.ordered_items)
        $('#order-message').toggleClass('hidden');

        setTimeout(function(){
          $("body").find(".poke-block").remove();
        },0);
      }
    })
  },

  render: function() {
    this.$el.html(this.template());
    this.renderCartItems();
    return this;
  }
})
