Celadon.Views.OrderedItemListItem = Backbone.View.extend({
  tagName: 'li',
  className: 'ordered-item',

  template: JST['orderedItems/list_item'],

  initialize: function(options) {
    this.orderedItem = options.orderedItem
  },

  render: function() {
    this.$el.html(this.template({
      product: this.model,
      orderedItem: this.orderedItem
    }));
    return this;
  }
})
