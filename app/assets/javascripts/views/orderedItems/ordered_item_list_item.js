Celadon.Views.OrderedItemListItem = Backbone.View.extend({
  tagName: 'li',
  className: 'ordered-item',

  template: JST['orderedItems/list_item'],

  render: function() {
    this.$el.html(this.template({
      product: this.model
    }));
    return this;
  }
})
