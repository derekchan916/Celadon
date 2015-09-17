Celadon.Models.User = Backbone.Model.extend({
  urlRoot: '/api/users',

  parse: function(payload) {
    if (payload.reviews) {
      this.reviews().set(payload.reviews, { parse: true })
      delete payload.reviews
    }

    if (payload.cart_items) {
      this.cart_items().set(payload.cart_items, { parse: true })
      delete payload.cart_items
    }

    return payload;
  },

  reviews: function() {
    if (!this._reviews) {
      this._reviews = new Celadon.Collections.Reviews([],
        { author: this })
    }
    return this._reviews;
  },

  cart_items: function() {
    if (!this._cart_items) {
      this._cart_items = new Celadon.Collections.CartItems([],
        { user: this })
    }
    return this._cart_items;
  }
})
