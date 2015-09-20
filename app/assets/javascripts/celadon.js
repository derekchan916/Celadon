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
    Celadon.types = new Celadon.Collections.Types();
    Celadon.types.fetch();

    this.currentUser = new Celadon.Models.CurrentUser();
    this.currentUser.fetch();
    this.header = new Celadon.Views.Header({ el: '#main-header'})

    var router = new Celadon.Routers.Router({
      $rootEl: $('#main')
    })
    Backbone.history.start();
  },
};

$(document).ready(function(){
  Celadon.initialize();
});
