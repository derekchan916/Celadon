Celadon.Views.UserEditForm = Backbone.View.extend({
  template: JST['users/edit_form'],

  events: {
    'submit form': 'submit',
    'change #input-post-image': 'fileInputChange'
  },

  initialize: function(options) {
    this.listenTo(this.model, 'sync', this.render)
  },

  render: function() {
    this.$el.html(this.template({ user: this.model }));
    return this;
  },

  submit: function(e) {
    e.preventDefault();
    var attrs = $(e.currentTarget).serializeJSON();
    var that = this;

    this.model.set(attrs.user);
    this.model.save({}, {
      success: function() {
        that.collection.add(that.model, { merge: true });
        Backbone.history.navigate('#/user/' + that.model.get('id'), { trigger: true });
      }
    })

    // event.preventDefault();
    //
    // var title = this.$("#input-post-title").val();
    // var file = this.$("#input-post-image")[0].files[0];
    //
    // var formData = new FormData();
    // formData.append("post[title]", title);
    // formData.append("post[image]", file);
    //
    // var that = this;
    // this.model.saveFormData(formData, {
    //   success: function(){
    //     that.collection.add(that.model);
    //     Backbone.history.navigate("", { trigger: true });
    //   }
    // });
  },

  fileInputChange: function(event){
    console.log(event.currentTarget.files[0]);

    var that = this;
    var file = event.currentTarget.files[0];
    var reader = new FileReader();

    reader.onloadend = function(){
      that._updatePreview(reader.result);
    }

    if (file) {
      reader.readAsDataURL(file);
    } else {
      that._updatePreview("");
    }
  },

  _updatePreview: function(src){
    this.$el.find("#preview-post-image").attr("src", src);
  }
})
