Celadon.Views.SignIn = Backbone.View.extend({
  template: JST['sign_in'],
  className: 'sign-in-sheet',

  initialize: function(options){
    this.callback = options.callback;
    this.listenTo(Celadon.currentUser, "signIn", this.signInCallback);
  },

  events: {
    "submit form": "submit"
  },

  render: function(){
    this.$el.html(this.template());

    return this;
  },

  submit: function(e){
    e.preventDefault();
    var formData = $(e.currentTarget).serializeJSON().user;
    Celadon.currentUser.signIn({
      email: formData.email,
      password: formData.password,
      error: function(){
        alert("Wrong username/password combination. Please try again.");
      }
    });
  },

  signInCallback: function(event){
    if(this.callback) {
      this.callback();
    } else {
      Backbone.history.navigate("", { trigger: true });
    }
  }

});
