Celadon.Views.Header = Backbone.View.extend({
  templateHeader: JST['header'],
  templateSearch: JST.search,

  events: {
    "change #search-bar": "search",
    "click #sign-out-link": "signOut",
    'mouseenter .button-able-hover': 'toggleDropdownOn',
    'mouseleave .button-able-hover': 'toggleDropdownOff',
    'click #to-cart-btn': 'goToCart'
  },

  initialize: function(options){
    this.listenTo(Celadon.currentUser, "signIn signOut", this.renderHeader);
    this.listenTo(Celadon.types, "sync", this.renderHeader);

    Celadon.searchResults = new Celadon.Collections.SearchResults();
    Celadon.searchResults.pageNum = 1;
    this.listenTo(Celadon.searchResults, "sync", this.renderSearch);

    this.renderHeader();
  },

  renderHeader: function(){
    this.$el.html(this.templateHeader({ currentUser: Celadon.currentUser }))
    return this;
  },

  renderSearch: function() {
    Backbone.history.navigate('#search', { trigger: true })
  },

  search: function(e) {
    e.preventDefault();
    Celadon.searchResults.pageNum = 1;
    Celadon.searchResults.query = this.$("#search-bar").val()
    this.$('#search-bar').val('');
    Celadon.searchResults.fetch({
      data: {
        query: Celadon.searchResults.query,
        page: 1
      }
    })
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
