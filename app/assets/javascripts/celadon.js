window.Celadon = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    Celadon.products = new Celadon.Collections.Products();
    Celadon.products.fetch();
    Celadon.users = new Celadon.Collections.Users();
    Celadon.users.fetch();
    var router = new Celadon.Routers.Router({
      $rootEl: $('#main')
    })
    Backbone.history.start();
  }
};

$(document).ready(function(){
  Celadon.initialize();
});
