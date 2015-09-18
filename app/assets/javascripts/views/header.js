Celadon.Views.Header = Backbone.View.extend({
  template: JST['header'],

  events: {
    "click #sign-out-link": "signOut",
    'mouseenter .button1': 'toggleDropdownOn',
    'mouseleave .button1': 'toggleDropdownOff',
    'click #to-cart-btn': 'goToCart'
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
  },

  goToCart: function(e) {
    e.preventDefault();
    Backbone.history.navigate('#/user/' + Celadon.currentUser.id + '/cart_items',
      { trigger: true }
    )
  }
});
