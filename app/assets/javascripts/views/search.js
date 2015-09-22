Celadon.Views.Search = Backbone.View.extend({
  template: JST.search,

  events: {
    // "change #search-bar": "search",
    "click .next-page": "nextPage",
    // "click .prev-page": "prevPage"
  },

  initialize: function () {
    // Celadon.searchResults = new Celadon.Collections.SearchResults();
    // Celadon.searchResults.pageNum = 1;
    this.listenTo(Celadon.searchResults, "sync", this.render);
  },

  render: function() {
    this.$el.html(this.template({ results: Celadon.searchResults }));

    return this;
  },

  nextPage: function (e) {
    this.searchResults.fetch({
      data: {
        query: this.searchResults.query,
        page: this.searchResults.pageNum + 1
      },
      success: function () {
        this.searchResults.pageNum = this.searchResults.pageNum + 1;
      }.bind(this)
    });
  },

  // search: function(e) {
  //   console.log("this works")
  //   e.preventDefault();
  //   Celadon.searchResults.pageNum = 1;
  //   Celadon.searchResults.query = this.$("#search-bar").val()
  //   Celadon.searchResults.fetch({
  //     data: {
  //       query: Celadon.searchResults.query,
  //       page: 1
  //     }
  //   })
  // }
})
