Celadon.Views.ProductShow = Backbone.CompositeView.extend({
  template: JST['products/show'],

  events: {
    'click #reviews button': 'renderReviewForm',
    'click #cancel-btn': 'render'
  },

  initialize: function(options) {
    this.listenTo(this.model, 'sync', this.render);
    this.listenTo(this.model.reviews(), 'sync', this.render)
  },

  addReviews: function(review) {
    var view = new Celadon.Views.ReviewShow({ model: review });
    this.addSubview('#reviews', view);
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
