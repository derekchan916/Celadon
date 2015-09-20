Celadon.Models.Product = Backbone.Model.extend({
  urlRoot: '/api/products',

  parse: function(payload) {
    if (payload.reviews) {
      this.reviews().set(payload.reviews, { parse: true })
      delete payload.reviews
    }

    if (payload.moves) {
      var moves = []

      payload.moves.forEach(function(move) {
        moves.push(" " + move.name)
      })

      payload.moves = moves;
    }

    if (payload.poke_types) {
      var category_types = []

      payload.poke_types.forEach(function(type) {
        category_types.push(" " + type.name)
      })

      payload.poke_types = category_types;
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
