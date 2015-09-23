Celadon.Views.ReviewForm = Backbone.View.extend({
  template: JST['reviews/form'],
  className: 'modal-post-form',

  events: {
    'click #submit-btn': 'submit'
  },

  render: function() {
    this.$el.html(this.template())

    this.$el.find('#star-rate').raty('destroy');
    this.$el.find('#star-rate').raty({
      path: '/assets/',
      half: false,
      targetType: 'score',
      targetKeep: true,
      scoreName: 'review[star_rating]'
    });
    return this
  },

  submit: function(e) {
    e.preventDefault();
    debugger
    var that = this;
    var attrs = {
      product_id: this.collection.product.id,
      title: this.$('#title-input').val(),
      body: this.$('textarea').val(),
      star_rating: parseInt($(e.currentTarget).parent().serializeJSON().review.star_rating)
    }
    var that = this;
    var newReview = new Celadon.Models.Review();
    newReview.save(attrs, {
      success: function() {
        that.collection.add(newReview);
        Backbone.history.navigate('#/product/' + that.collection.product.id, { trigger: true })
      }, error: function(errors) {
        alert("One post, One product.")
      }
    })
  },
})
