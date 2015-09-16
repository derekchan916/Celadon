Celadon.Routers.Router = Backbone.Router.extend({
  initialize: function(options){
    this.$rootEl = options.$rootEl
  },

  routes: {
    '': 'productIndex',
    'user/:id': 'userShow',
    'user/:id/edit': 'userEdit',
    'product/:id': 'productShow'
  },

  userShow: function(id) {
    var user = Celadon.users.getOrFetch(id);
    var view = new Celadon.Views.UserShow({
      model: user
    })
    this._swapView(view);
  },

  userEdit: function(id) {
    var user = Celadon.users.getOrFetch(id);
    var view = new Celadon.Views.UserForm({
      model: user,
      collection: Celadon.users
    })
    this._swapView(view);
  },

  productIndex: function() {
    var view = new Celadon.Views.ProductsIndex({
      collection: Celadon.products
    })
    this._swapView(view);
  },

  productShow: function(id) {
    var product = Celadon.products.getOrFetch(id);
    var view = new Celadon.Views.ProductShow({
      model: product
    })
    this._swapView(view);
  },

  _swapView: function(view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  }
})
