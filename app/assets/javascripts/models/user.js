Celadon.Models.User = Backbone.Model.extend({
  urlRoot: 'api/users',

  parse: function(payload) {
    if (payload.reviews) {
      this.reviews().set(payload.reviews, { parse: true })
      delete payload.reviews
    }

    return payload;
  },

  reviews: function() {
    if (!this._reviews) {
      this._reviews = new Celadon.Collections.Reviews([],
        { author: this })
    }
    return this._reviews;
  }
})
