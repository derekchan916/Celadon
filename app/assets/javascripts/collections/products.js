Celadon.Collections.Products = Backbone.Collection.extend({
  url: '/api/products',
  model: Celadon.Models.Product,

  comparator: function(product) {
    return -product.get("number_of_views")
  },

  getOrFetch: function(id) {
    var that = this;
    var product = this.get(id);
    if (product) {
      product.fetch();
    } else {
      product = new Celadon.Models.Product({ id: id });
      this.add(product);
      product.fetch({
        success: function() {
          that.remove(product)
        }
      })
    }
    return product;
  },

  // parse: function (payload) {
  //   if (payload.total_count) {
  //     this.total_count = payload.total_count;
  //   }
  //
  //   return payload.results;
  // },
})
