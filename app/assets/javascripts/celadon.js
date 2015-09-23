window.Celadon = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},

  initialize: function() {
    Celadon.products = new Celadon.Collections.Products();
    // Celadon.products.pageNum = 1;
    Celadon.products.fetch({
      data: {
        type: "fetch_by_page",
        pageNum: Celadon.products.pageNum
      }
    });
    Celadon.productsBasedViews = new Celadon.Collections.Products();
    Celadon.productsBasedViews.fetch({
      data: {
        type: "fetch_by_all"
      }
    })
    Celadon.users = new Celadon.Collections.Users();
    Celadon.users.fetch();
    Celadon.types = new Celadon.Collections.Types();
    Celadon.types.fetch();

    Celadon.currentUser = new Celadon.Models.CurrentUser();
    Celadon.currentUser.fetch();
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
