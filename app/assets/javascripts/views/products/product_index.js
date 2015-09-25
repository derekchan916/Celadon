Celadon.Views.ProductsIndex = Backbone.CompositeView.extend({
  template: JST['products/index'],

  events: {
    "click .next-page": "nextPage",
    "click .prev-page": "prevPage",
    "click .checkbox-input": "filterList",
    "click .checkbox-price": "filterList"
  },

  initialize: function(options) {
    this.collection.pageNum = 1;
    this.listenTo(this.collection, 'sync', this.render);
    this.listenTo(Celadon.types, "sync", this.render);
    if (options.filter) {
      this.filter = options.filter;
      this.filterList(event);
    }

    this.collection.price = ["on"];
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
    // debugger
    this.$el.html(this.template({
      results: this.collection,
      total_count: this.collection.total_count,
      pageNum: this.collection.pageNum,
      categories: this.collection.categories,
      price: this.collection.price
    }));
    this.renderLists();
    return this;
  },

  filterList: function(e) {
    e.preventDefault();
    var that = this
    var $result = this.$('input:checked')
    this.collection = new Celadon.Collections.Products();
    // this.collection.categories = null;
    // this.collection.price = null;

    if (this.filter) {
      this.collection.categories = [this.filter];
      this.filter = null;
    } else {
      this.collection.categories = $.map(this.$('.checkbox-input'), function(input){
        if ($(input).is(":checked")) {
          return $(input).val();
        }
      })
    }

    this.collection.price = $.map(this.$('.checkbox-price'), function(input) {
      if ($(input).is(':checked')) {
        return $(input).val();
      }
    })
    // debugger
    this.collection.pageNum = 1;
    this.collection.fetch({
      data: {
        page: this.collection.pageNum,
        type: "fetch_by_page",
        categories: this.collection.categories,
        price: this.collection.price
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
