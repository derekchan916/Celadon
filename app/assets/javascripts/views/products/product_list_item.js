Celadon.Views.ProductListItem = Backbone.View.extend({
  tagName: 'li',
  className: 'product-item',

  template: JST['products/list_item'],

  render: function() {
    this.$el.html(this.template({ product: this.model }));
    return this;
  }
})
