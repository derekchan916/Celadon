Celadon.Collections.Users = Backbone.Collection.extend({
  url: '/api/users',
  model: Celadon.Models.User,

  getOrFetch: function(id) {
    var that = this;
    var user = this.get(id);
    if (user) {
      user.fetch();
    } else {
      user = new Celadon.Models.User({ id: id });
      this.add(user);
      user.fetch({
        success: function() {
          that.remove(user)
        }
      })
    }
    return user;
  }
})
