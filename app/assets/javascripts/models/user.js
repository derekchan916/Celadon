Celadon.Models.User = Backbone.Model.extend({
  urlRoot: '/api/users',

  fullName: function(){
    return this.escape("first_name") + " " + this.escape("last_name");
  },

  toJSON: function(){
    var json = { user: _.clone(this.attributes) };
    return json;
  },

  parse: function(payload) {
    if (payload.reviews) {
      this.reviews().set(payload.reviews, { parse: true })
      delete payload.reviews
    }

    if (payload.cart_items) {
      this.cart_items().set(payload.cart_items, { parse: true })
      delete payload.cart_items
    }

    if (payload.ordered_items) {
      this.ordered_items().set(payload.ordered_items, { parse: true })
      delete payload.ordered_items
    }

    return payload;
  },

  reviews: function() {
    if (!this._reviews) {
      this._reviews = new Celadon.Collections.Reviews([],
        { author: this })
    }
    return this._reviews;
  },

  cart_items: function() {
    if (!this._cart_items) {
      this._cart_items = new Celadon.Collections.CartItems([],
        { user: this })
    }
    return this._cart_items;
  },

  ordered_items: function() {
    if (!this._ordered_items) {
      this._ordered_items = new Celadon.Collections.OrderedItems([],
        { user: this })
    }
    return this._ordered_items;
  },

  saveFormData: function(formData, options){
    var method = this.isNew() ? "POST" : "PUT";
    var model = this;

    $.ajax({
      url: _.result(model, "url"),
      type: method,
      data: formData,
      processData: false,
      contentType: false,
      success: function(resp){
        model.set(model.parse(resp));
        model.trigger('sync', model, resp, options);
        options.success && options.success(model, resp, options);
      },
      error: function(resp){
        options.error && options.error(model, resp, options);
      }
    });
  }
});

Celadon.Models.CurrentUser = Celadon.Models.User.extend({
  url: "/api/session",

  initialize: function(options){
    this.listenTo(this, "change", this.fireSessionEvent);
  },

  isSignedIn: function() {
    return !this.isNew();
  },

  signIn: function(options){
    var model = this;
    var credentials = {
      "user[email]": options.email,
      "user[password]": options.password
    };

    $.ajax({
      url: this.url,
      type: "POST",
      data: credentials,
      dataType: "json",
      success: function(data){
        model.set(data);
        options.success && options.success();
      },
      error: function(){
        options.error && options.error();
      }
    });
  },

  signOut: function(options){
    var model = this;

    $.ajax({
      url: this.url,
      type: "DELETE",
      dataType: "json",
      success: function(data){
        model.clear();
        options.success && options.success();
      }
    });
  },

  fireSessionEvent: function(){
    if(this.isSignedIn()){
      this.trigger("signIn");
    } else {
      this.trigger("signOut");
    }
  }
});
