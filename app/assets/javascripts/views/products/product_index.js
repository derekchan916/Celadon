Celadon.Views.ProductsIndex = Backbone.CompositeView.extend({
  template: JST['products/index'],

  events: {
    "click .next-page": "nextPage",
    "click .prev-page": "prevPage",
    "submit .filter-list": "filterList"
  },

  initialize: function(options) {
    this.collection.pageNum = 1;
    this.listenTo(this.collection, 'sync', this.render);
    this.listenTo(Celadon.types, "sync", this.render);
  },

  renderLists: function() {
    this.collection.each(function(product) {
      this.addProductSubview(product);
    }.bind(this));
  },

  addProductSubview: function(product) {
    var pokeListItem = new Celadon.Views.ProductListItem({
      model: product
    });
    this.addSubview('ul.all-poke-list', pokeListItem);
  },

  render: function() {
    this.$el.html(this.template({
      results: this.collection,
      pageNum: this.collection.pageNum
    }));
    this.renderLists();
    return this;
  },

  filterList: function(e) {
    e.preventDefault();
    var that = this
    // debugger
    var $result = this.$('input:checked')
    this.collection = new Celadon.Collections.Products();
    this.collection.categories = $.map($result, function(input) {
      return $(input).val()
    })
    this.collection.pageNum = 1;
    this.collection.fetch({
      data: {
        page: this.collection.pageNum,
        type: "fetch_by_page",
        categories: this.collection.categories
      },
      success: function() {
        that.render();
      }
    })
  },

  nextPage: function (e) {
    e.preventDefault();
    this.collection.fetch({
      data: {
        page: this.collection.pageNum + 1,
        type: "fetch_by_page",
        categories: this.collection.categories
      },
      success: function () {
        this.collection.pageNum = this.collection.pageNum + 1;
        window.scrollTo(0, 0);
        this.render();
      }.bind(this)
    });
  },

  prevPage: function (e) {
    e.preventDefault();
    this.collection.fetch({
      data: {
        page: this.collection.pageNum - 1,
        type: "fetch_by_page"
      },
      success: function () {
        this.collection.pageNum = this.collection.pageNum - 1;
        window.scrollTo(0, 0);
        this.render();
      }.bind(this)
    });
  },
})
