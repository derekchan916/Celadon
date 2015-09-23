Celadon.Views.HomePage = Backbone.CompositeView.extend({
  template: JST['homePage/index'],

  initialize: function(options){
    NUMBER_OF_SHOW = 5;
    this.allProducts = options.allProducts
    this.allProductsBasedViews = options.allProductsBasedViews
    this.listenTo(this.allProducts, 'sync', this.render)
    this.listenTo(this.allProductsBasedViews, 'sync', this.render)
  },

  renderAllProducts: function() {
    this.allProducts.shuffle().slice(0, NUMBER_OF_SHOW).forEach(function(product) {
      this.addAllProductsSubview(product);
    }.bind(this));
  },

  addAllProductsSubview: function(product) {
    var pokeListItem = new Celadon.Views.ProductsList({
      model: product
    });
    this.addSubview('.all-product-views', pokeListItem);
  },

  renderMostViewedProducts: function() {
    this.allProductsBasedViews.sort().slice(0, NUMBER_OF_SHOW).forEach(function(product) {
      this.addMostViewedProductsSubview(product);
    }.bind(this))
  },

  addMostViewedProductsSubview: function(product) {
    var pokeListItem = new Celadon.Views.ProductsList({
      model: product
    });
    this.addSubview('.most-viewed-products', pokeListItem);
  },

  render: function() {
    this.$el.html(this.template());
    this.renderAllProducts();
    this.renderMostViewedProducts();
    return this;
  }
})
