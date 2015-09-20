Celadon.Views.ReviewShow = Backbone.View.extend({
  tagName: 'ul',
  template: JST['reviews/show'],
  tagName: 'review-list',

  render: function() {
    this.$el.html(this.template({
      review: this.model,
      author: this.author
     }))
    return this
  }
})
