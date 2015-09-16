Celadon.Models.Product = Backbone.Model.extend({
  urlRoot: 'api/products',

  parse: function(payload) {
    if (payload.reviews) {
      this.reviews().set(payload.reviews, { parse: true })
      delete payload.reviews
    }

    return payload;
  },

  reviews: function() {
    if (!this._reviews) {
      this._reviews = new Celadon.Collections.Reviews([], { product: this })
    }
    return this._reviews;
  }
})
