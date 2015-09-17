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
      success: function() {
        console.log('you added it to the cart!')
      }
    })

      // var that = this;
      // var newReview = new Celadon.Models.Review();
      // newReview.save(attrs, {
      //   success: function() {
      //     that.collection.add(newReview);
      //     Backbone.history.navigate('#/product/' +   that.collection.product.id, { trigger: true })
      //   }
      // })
    // },
  },

  render: function() {
    this.$el.html(this.template({ product: this.model }));
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
