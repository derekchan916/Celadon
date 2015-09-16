Celadon.Views.ReviewForm = Backbone.View.extend({
  template: JST['reviews/form'],
  className: 'modal-post-form',

  events: {
    'click #submit-btn': 'submit'
  },

  render: function() {
    this.$el.html(this.template())
    return this
  },

  submit: function(e) {
    e.preventDefault();
    this.collection.create({
      product_id: this.collection.product.id,
      title: this.$('input').val(),
      body: this.$('textarea').val(),
      star_rating: this.$('select').val()
    }, { wait: true });
  },
})

// var attrs = { product_id: this.collection.product.id,
//   title: this.$('input').val(),
//   body: this.$('textarea').val(),
//   star_rating: this.$('select').val()
// }
// var that = this;
// var newReview = new Celadon.Models.Review();
// newReview.save(attrs, {
//   success: function() {
//
//   }
// })
