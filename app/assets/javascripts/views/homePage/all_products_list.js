Celadon.Views.AllProductsList = Backbone.View.extend({
  template: JST['homePage/all_products_list'],
  className: 'homepage-product-image',

  render: function() {
    this.$el.html(this.template({ product: this.model }))
    return this;
  }
})
