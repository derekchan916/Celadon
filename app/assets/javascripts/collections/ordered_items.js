Celadon.Collections.OrderedItems = Backbone.Collection.extend({
  url: '/api/ordered_items',
  model: Celadon.Models.OrderedItem,

  initialize: function(model, options) {
    this.product = options.product,
    this.user = options.user
  },

  comparator: function(orderedItem) {
    return orderedItem.get('created_at')
  }
})
