Celadon.Views.OrderedItemsIndex = Backbone.CompositeView.extend({
  template: JST['orderedItems/index'],

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
    var product_id = orderedItem.get('product_id');
    var product = new Celadon.Models.Product({ id: product_id });
    var that = this;
    product.fetch({
      success: function() {
        var orderedItemListItem = new Celadon.Views.OrderedItemListItem({
          model: product,
          orderedItem: orderedItem
        });
        that.addSubview('ul.ordered-items', orderedItemListItem);
      }
    })
  },

  render: function() {
    this.$el.html(this.template());
    this.renderOrderedItems();
    return this;
  }
})
