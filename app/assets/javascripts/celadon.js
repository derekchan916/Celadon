window.Celadon = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},

  // events: {
  //   'click .navbar-btn': 'toggleDropdown'
  // },

  initialize: function() {
    Celadon.products = new Celadon.Collections.Products();
    Celadon.products.fetch();
    Celadon.users = new Celadon.Collections.Users();
    Celadon.users.fetch();
    var router = new Celadon.Routers.Router({
      $rootEl: $('#main')
    })
    Backbone.history.start();
  },

  // toggleDropdown: function(e) {
  //   console.log('works');
  // }
};

$(document).ready(function(){
  Celadon.initialize();
});
