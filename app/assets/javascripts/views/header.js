Celadon.Views.Header = Backbone.View.extend({
  template: JST['header'],

  events: {
    "click #sign-out-link": "signOut",
    'mouseenter .span-button': 'toggleDropdownOn',
    'mouseleave .span-button': 'toggleDropdownOff'
  },

  initialize: function(options){
    this.listenTo(Celadon.currentUser, "signIn signOut", this.render);
    this.render();
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
  },

  toggleDropdownOn: function(e) {
    e.preventDefault();
    $('.dropdown').removeClass('hidden');
    $('.modal-screen-backdrop').addClass('darken');
  },

  toggleDropdownOff: function(e) {
    e.preventDefault();
    $('.dropdown').addClass('hidden');
    $('.modal-screen-backdrop').removeClass('darken');
  }
});
