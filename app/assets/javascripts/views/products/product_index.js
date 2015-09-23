Celadon.Views.ProductsIndex = Backbone.CompositeView.extend({
  template: JST['products/index'],

  initialize: function(options) {
    this.listenTo(this.collection, 'sync', this.render);
  },

  renderLists: function() {
    this.collection.each(function(product) {
      this.addProductSubview(product);
    }.bind(this));
  },

  addProductSubview: function(product) {
    var pokeListItem = new Celadon.Views.ProductListItem({
      model: product
    });
    this.addSubview('ul.all-poke-list', pokeListItem);
  },

  render: function() {
    this.$el.html(this.template());
    this.renderLists();
    return this;
  }
})
