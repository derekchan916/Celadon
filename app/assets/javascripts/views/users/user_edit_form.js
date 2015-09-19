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
    var formData = new FormData();
    formData.append('user[fname]', this.$('#user-fname').val());
    formData.append('user[lname]', this.$('#user-lname').val());
    formData.append('user[image]', this.$('#input-post-image')[0].files[0]);
    
    this.model.saveFormData(formData, {
      success: function() {
        that.collection.add(that.model, { merge: true });
        Backbone.history.navigate('#/user/' + that.model.get('id'), { trigger: true });
      }
    })
  },

  fileInputChange: function(e){
    console.log(e.currentTarget.files[0]);

    var that = this;
    var file = e.currentTarget.files[0];
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
