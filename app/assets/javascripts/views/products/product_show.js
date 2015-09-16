Celadon.Views.ProductShow = Backbone.View.extend({
  template: JST['products/show'],

  initialize: function(options) {
    this.listenTo(this.model, 'sync', this.render);
  },

  render: function() {
    this.$el.html(this.template({ product: this.model }));
    return this;
  }
})
