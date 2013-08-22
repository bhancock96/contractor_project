$(document).ready(function() {
  $('.photo').on('mouseenter', function(){
     $(this)
    .css({'z-index': '99'})  /* Possibly use overflow hidden*/
    .animate({
    height:'300px',
    width:'300px'
    });
  });

  $('.photo').on('mouseleave', function(){
    $(this).css( 'z-index', '0')
      .animate({
      height: '200px',
      width: '200px'
    });
  });
});
