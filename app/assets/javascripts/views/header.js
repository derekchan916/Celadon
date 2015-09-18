Celadon.Views.Header = Backbone.View.extend({
  template: JST['header'],

  initialize: function(options){
    this.listenTo(Celadon.currentUser, "signIn signOut", this.render);
    this.render();
  },

  events: {
    "click #sign-out-link": "signOut"
  },

  render: function(){
    this.$el.html(this.template({ currentUser: Celadon.currentUser }))
    return this;
  },

  signOut: function(e){
    e.preventDefault();
    Celadon.currentUser.signOut({
      success: function(){
        Backbone.history.navigate("session/new", { trigger: true });
      }
    });
  }
});
