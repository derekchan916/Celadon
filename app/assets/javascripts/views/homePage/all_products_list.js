Celadon.Views.ProductsList = Backbone.View.extend({
  template: JST['homePage/products_list'],
  className: 'homepage-product-image',

  render: function() {
    this.$el.html(this.template({ product: this.model }))
    return this;
  }
})
