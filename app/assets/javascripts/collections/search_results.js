Celadon.Collections.SearchResults = Backbone.Collection.extend({
  url: "api/search",

  parse: function (payload) {
    if (payload.total_count) {
      this.total_count = payload.total_count;
    }

    return payload.results;
  },

  model: function(attrs) {
    var type = attrs._type;
    delete attrs._type;

    return new Celadon.Models[type](attrs);
  }
})
