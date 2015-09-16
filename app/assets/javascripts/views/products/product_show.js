Celadon.Views.ProductShow = Backbone.CompositeView.extend({
  template: JST['products/show'],

  events: {
    'click #reviews button': 'renderListForm'
  },

  initialize: function(options) {
    this.listenTo(this.model, 'sync', this.render);
  },

  addReviews: function(review) {
    var view = new Celadon.Views.ReviewShow({
      model: review
    })
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

  renderListForm: function() {
    console.log('this works')
  }
})
