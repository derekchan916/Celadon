Celadon.Views.UserForm = Backbone.View.extend({
  template: JST['users/form'],

  initialize: function(options) {
    this.listenTo(this.model, 'sync', this.render)
  },

  events: {
    'submit form': 'submit'
  },

  render: function() {
    this.$el.html(this.template({ user: this.model }));
    return this;
  },

  submit: function(e) {
    e.preventDefault();
    var attrs = $(e.currentTarget).serializeJSON();
    var that = this;
    this.model.set(attrs.user);
    this.model.save({}, {
      success: function() {
        that.collection.add(that.model, { merge: true });
        Backbone.history.navigate('#/user/' + that.model.get('id'), { trigger: true });
      }
    })
  }
})
