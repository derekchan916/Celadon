Celadon.Views.Search = Backbone.CompositeView.extend({
  template: JST.search,

  events: {
    "click .next-page": "nextPage",
    "click .prev-page": "prevPage"
  },

  initialize: function () {
    this.listenTo(Celadon.searchResults, "sync", this.render);
  },

  renderLists: function() {
    Celadon.searchResults.each(function(result) {
      this.addResultSubview(result);
    }.bind(this))
  },

  addResultSubview: function(result) {
    var resultView = new Celadon.Views.ProductListItem({
      model: result
    })
    this.addSubview('.search-results-full', resultView);
  },

  render: function() {
    this.$el.html(this.template({ results: Celadon.searchResults }));
    this.renderLists();
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
