

activities.each(function() {
  var indexview = new IndexView({ collection: activities });
  $('main').html(indexview.render().el); 
});



