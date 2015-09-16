Celadon.Collections.Reviews = Backbone.Collection.extend({
  url: 'api/reviews',
  model: Celadon.Models.Review,

  initialize: function(model, options) {
    this.product = options.product,
    this.author = options.author
  }
})
