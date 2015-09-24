
Celadon.Routers.Router = Backbone.Router.extend({
  initialize: function(options){
    this.$rootEl = options.$rootEl
  },

  routes: {
    '': 'homePage',
    '_=_': 'homePage',
    'products': 'productIndex',
    'users/new': 'usersNew',
    'session/new': 'signIn',
    'user/:id': 'userShow',
    'user/:id/edit': 'userEdit',
    'user/:id/cart_items': 'cartItemsIndex',
    'user/:id/ordered_items': 'orderedItemsIndex',
    'product/:id': 'productShow',
    'search': 'search'
  },

  homePage: function() {
    var view = new Celadon.Views.HomePage({
      allProducts: Celadon.products,
      allProductsBasedViews: Celadon.productsBasedViews
    })
    this._swapView(view);
  },

  usersNew: function() {
    if (!this._requireSignedOut()) { return; }

    var model = new Celadon.users.model();
    var view = new Celadon.Views.UserNewForm({
      collection: Celadon.users,
      model: model
    });
    this._swapView(view);
  },

  userShow: function(id) {
    var callback = this.userShow.bind(this, id);
    if (!this._requireSignedIn(callback)) { return; }

    var view = new Celadon.Views.UserShow({
      model: Celadon.currentUser
    })
    this._swapView(view);
  },

  userEdit: function(id) {
    var callback = this.userEdit.bind(this, id);
    if (!this._requireSignedIn(callback)) { return; }

    user = new Celadon.Models.User({ id: id })
    user.fetch()
    var view = new Celadon.Views.UserEditForm({
      model: user,
      collection: Celadon.users
    })
    this._swapView(view);
  },

  signIn: function(callback){
    var signInView = new Celadon.Views.SignIn({
      callback: callback
    });
    this._swapView(signInView);
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

  cartItemsIndex: function(id) {
    var callback = this.cartItemsIndex.bind(this, id);
    if (!this._requireSignedIn(callback)) { return; }
    var view = new Celadon.Views.CartItemsIndex({
      collection: Celadon.currentUser.cart_items()
    })
    this._swapView(view);
  },

  orderedItemsIndex: function(id) {
    var callback = this.orderedItemsIndex.bind(this, id);
    if (!this._requireSignedIn(callback)) { return; }

    var view = new Celadon.Views.OrderedItemsIndex({
      collection: Celadon.currentUser.ordered_items()
    })
    this._swapView(view);
  },

  search: function () {
    var view = new Celadon.Views.Search();

    this._swapView(view);
  },

  _requireSignedIn: function(callback){
    if (!Celadon.currentUser.isSignedIn()) {
      callback = callback || this._signIn.bind(this);
      this.signIn(callback);
      return false;
    }

    return true;
  },

  _requireSignedOut: function(callback){
    if (Celadon.currentUser.isSignedIn()) {
      callback = callback || this._goHome.bind(this);
      callback();
      return false;
    }

    return true;
  },

  _goHome: function(){
    Backbone.history.navigate("", { trigger: true });
  },

  _signIn: function(){
    Backbone.history.navigate('#/session/new', { trigger: true })
  },

  _swapView: function(view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  }
})
