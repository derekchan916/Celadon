window.Celadon = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},

  initialize: function() {
    $("body").append("<div class='poke-block'><i class='icon-pokeball'/></div>")
    Celadon.products = new Celadon.Collections.Products();
    Celadon.products.fetch({
      data: {
        type: "fetch_by_page",
        pageNum: Celadon.products.pageNum
      },
      success: function(){


        Backbone.history.start();
      }
    });
    Celadon.productsBasedViews = new Celadon.Collections.Products();
    Celadon.productsBasedViews.fetch({
      data: {
        type: "fetch_by_views"
      }
    })
    Celadon.users = new Celadon.Collections.Users();
    Celadon.users.fetch();
    Celadon.types = new Celadon.Collections.Types();
    Celadon.types.fetch();

    Celadon.currentUser = new Celadon.Models.CurrentUser();
    Celadon.currentUser.fetch({
      success: function() {
        setTimeout(function(){
          $("body").find(".poke-block").remove();
        },0);
        // Celadon.productsRecommended = new Celadon.Collections.Products();
        // Celadon.productsRecommended.fetch({
        //   data: {
        //     type: "fetch_by_recommended",
        //   }
        // })
      }
    });
    this.header = new Celadon.Views.Header({ el: '#main-header'})

    var router = new Celadon.Routers.Router({
      $rootEl: $('#main')
    })
  },
};

$(document).ready(function(){
  Celadon.initialize();
});
