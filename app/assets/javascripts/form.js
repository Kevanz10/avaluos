jQuery(document).ready(function($) {
  var phorizontal =  $('.click.horizontal').data('toggle-on');
  if (phorizontal == true){
    $('.faded').css('display','block');
  }else{
    $('.faded').hide();
  }
});

