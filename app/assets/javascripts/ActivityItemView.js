var ActivityItemView = Backbone.View.extend({

  render: function() {
    var template = $('#activity-template').html();

    var html = Mustache.render(template, this.model.toJSON());
      this.$el.html(html);
      return this;
    }

});


