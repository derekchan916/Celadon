Celadon.Views.ReviewShow = Backbone.View.extend({
  tagName: 'ul',
  template: JST['reviews/show'],

  render: function() {
    this.$el.html(this.template({
      review: this.model,
      author: this.author
     }))
    return this
  }
})
