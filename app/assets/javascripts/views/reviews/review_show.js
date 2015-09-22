Celadon.Views.ReviewShow = Backbone.View.extend({
  tagName: 'ul',
  template: JST['reviews/show'],
  tagName: 'review-list',

  render: function() {
    this.$el.html(this.template({ review: this.model, author: this.author}));

    var that = this;
    this.$el.find('#user-star-rating').raty('destroy');
    this.$el.find('#user-star-rating').raty({
      path: '/assets/',
      half: false,
      score: that.model.escape('star_rating'),
      readOnly: true,
      scoreName: 'review[star_rating]'
    });

    return this
  }
})
