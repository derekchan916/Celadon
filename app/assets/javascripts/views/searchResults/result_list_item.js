Celadon.Views.ResultListItem = Backbone.View.extend({
  template: JST['searchResults/list_item'],
  tagName: "li",
  className: "result-show",

  render: function() {
    this.$el.html(this.template({ result: this.model }));
    var that = this;
    this.$el.find('#result-rating').raty('destroy');
    this.$el.find('#result-rating').raty({
      path: '/assets/',
      half: false,
      score: that.model.escape('average_star_rating'),
      readOnly: true,
      scoreName: 'result[average-rating]'
    });
    return this;
  }
})
