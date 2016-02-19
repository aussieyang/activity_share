// #################################

// changes color of button on hover

$(document).ready(function(){
  $( ":button" ).hover(function(){
    $(this).css("background","#02baff");
  },function(){
    $(this).css("background","");
  });
});


//changes link colour on hover

$(document).ready(function(){
  $( "a" ).hover(function(){
    $(this).css("color","#39CED9");
  },function(){
    $(this).css("color","");
  });
});
