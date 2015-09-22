Celadon.Views.ProductShow = Backbone.CompositeView.extend({
  template: JST['products/show'],

  events: {
    'click .review-create-btn': 'renderReviewForm',
    'click #cancel-btn': 'render',
    'click #add-cart-button': 'addToCart'
  },

  initialize: function(options) {
    this.listenTo(this.model, 'sync', this.render);
  },

  addReviews: function(review) {
    var view = new Celadon.Views.ReviewShow({ model: review });
    this.addSubview('#reviews', view);
  },

  addToCart: function(e) {
    e.preventDefault();
    var that = this;
    var newCartItem = new Celadon.Models.CartItem();
    var attrs = {
      product_id: this.model.id,
      quantity: this.$('#purchase-qty-selection').val()
    }
    newCartItem.save(attrs, {
      success: function(data) {
        Celadon.currentUser.set({
          current_subtotal: data.get('current_subtotal'),
          number_of_cart_items: data.get('number_of_cart_items')
        })
        Celadon.currentUser.cart_items().set(data.get('cart_items'))
        that.render();
        $('#add-cart-message').toggleClass('hidden');
      }
    })
  },

  render: function() {
    this.$el.html(this.template({ product: this.model }));

    var that = this;
    this.$el.find('#average-star-rating').raty('destroy');
    this.$el.find('#average-star-rating').raty({
      path: '/assets/',
      half: false,
      score: that.model.escape('average_star_rating'),
      readOnly: true,
      scoreName: 'product[average-rating]'
    });

    this.renderReviews();
    return this;
  },

  renderReviews: function() {
    this.model.reviews().each(this.addReviews.bind(this));
  },

  renderReviewForm: function() {
    var view = new Celadon.Views.ReviewForm ({
      collection: this.model.reviews()
    })
    this.addSubview('#review-create', view)
  }
})
