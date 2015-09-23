Celadon.Views.OrderedItemsIndex = Backbone.CompositeView.extend({
  template: JST['orderedItems/index'],
  className: 'ordered-show',

  initialize: function(options) {
    this.user = Celadon.currentUser;
    this.listenTo(this.user, 'sync', this.render);
  },

  renderOrderedItems: function() {
    this.collection.each(function(orderedItem) {
      this.addOrderedItemSubview(orderedItem);
    }.bind(this));
  },

  addOrderedItemSubview: function(orderedItem) {
    var orderedItemListItem = new Celadon.Views.OrderedItemListItem({
      model: orderedItem
    })
    this.addSubview('ul.ordered-items', orderedItemListItem);
  },

  render: function() {
    this.$el.html(this.template());
    this.renderOrderedItems();
    return this;
  }
})
