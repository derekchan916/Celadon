Celadon.Views.ProductsIndex = Backbone.CompositeView.extend({
  template: JST['products/index'],

  initialize: function(options) {
    this.listenTo(this.collection, 'sync', this.render);
  },

  renderLists: function() {
    this.collection.each(function(product) {
      this.addproductSubview(product);
    }.bind(this));
  },

  addproductSubview: function(product) {
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
