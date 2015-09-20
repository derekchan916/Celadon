Celadon.Views.Header = Backbone.View.extend({
  template: JST['header'],

  events: {
    "click #sign-out-link": "signOut",
    'mouseenter .span-button': 'toggleDropdownOn',
    'mouseleave .span-button': 'toggleDropdownOff',
    'click #to-cart-btn': 'goToCart'
  },

  initialize: function(options){
    this.listenTo(Celadon.currentUser, "signIn signOut", this.render);
    this.listenTo(Celadon.types, "sync", this.render);
    this.render();
  },

  render: function(){
    this.$el.html(this.template({ currentUser: Celadon.currentUser }))
    return this;
  },

  signOut: function(e){
    e.preventDefault();
    $('.modal-screen-backdrop').removeClass('darken');
    Celadon.currentUser.signOut({
      success: function(){
        Backbone.history.navigate("session/new", { trigger: true });
      }
    });
  },

  toggleDropdownOn: function(e) {
    e.preventDefault();
    $target = $(e.currentTarget).attr('data')
    $('.' + $target + ' .dropdown').removeClass('hidden');
    $('.modal-screen-backdrop').addClass('darken');
  },

  toggleDropdownOff: function(e) {
    e.preventDefault();
    $target = $(e.currentTarget).attr('data')
    $('.' + $target + ' .dropdown').addClass('hidden');
    $('.modal-screen-backdrop').removeClass('darken');
  },

  goToCart: function(e) {
    e.preventDefault();
    Backbone.history.navigate('#/user/' + Celadon.currentUser.id + '/cart_items',
      { trigger: true }
    )
  }
});
