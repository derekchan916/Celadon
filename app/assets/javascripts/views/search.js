Celadon.Views.Search = Backbone.View.extend({
  template: JST.search,

  events: {
    "change .query": "search",
    // "click .next-page": "nextPage",
    // "click .prev-page": "prevPage"
  },

  initialize: function () {
    this.searchResults = new Celadon.Collections.SearchResults();
    this.searchResults.pageNum = 1;
    this.listenTo(this.searchResults, "sync", this.render);
  },

  render: function() {
    this.$el.html(this.template({ results: this.searchResults }));

    return this;
  },

  search: function(e) {
    e.preventDefault();
    this.searchResults.pageNum = 1;
    this.searchResults.query = this.$(".query").val()
    this.searchResults.fetch({
      data: {
        query: this.searchResults.query,
        page: 1
      }
    })
  }
})
