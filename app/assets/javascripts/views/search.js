Celadon.Views.Search = Backbone.View.extend({
  template: JST.search,

  events: {
    // "change #search-bar": "search",
    "click .next-page": "nextPage",
    "click .prev-page": "prevPage"
  },

  initialize: function () {
    this.listenTo(Celadon.searchResults, "sync", this.render);
  },

  render: function() {
    this.$el.html(this.template({ results: Celadon.searchResults }));

    return this;
  },

  nextPage: function (e) {
    Celadon.searchResults.fetch({
      data: {
        query: Celadon.searchResults.query,
        page: Celadon.searchResults.pageNum + 1
      },
      success: function () {
        Celadon.searchResults.pageNum = Celadon.searchResults.pageNum + 1;
      }.bind(this)
    });
  },

  prevPage: function (e) {
    Celadon.searchResults.fetch({
      data: {
        query: Celadon.searchResults.query,
        page: Celadon.searchResults.pageNum - 1
      },
      success: function () {
        Celadon.searchResults.pageNum = Celadon.searchResults.pageNum - 1;
      }.bind(this)
    });
  },
})
