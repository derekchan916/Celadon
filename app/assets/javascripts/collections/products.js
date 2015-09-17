Celadon.Collections.Products = Backbone.Collection.extend({
  url: '/api/products',
  model: Celadon.Models.Product,

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
  }
})
