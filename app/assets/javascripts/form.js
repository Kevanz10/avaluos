//Google maps function
function initMap() {
  longitude = parseFloat($(".avaluo-form").find(".titulation-form").find("#longitude").val())
  latitude = parseFloat($(".avaluo-form").find(".titulation-form").find("#latitude").val())
        // Create a map object and specify the DOM element for display.
          var myLatLng = {lat: latitude, lng: longitude};
          var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 19,
            center: myLatLng
          });

          var marker = new google.maps.Marker({
            position: myLatLng,
            map: map,
            title: 'Hello World!'
          });

}

//operations

jQuery(document).ready(function($) {
  var phorizontal =  $('.click.horizontal').data('toggle-on');
  var area = $("[id*=area]");
  var vtotal = $("[id*=vtotal]");
 
  if (phorizontal == true){
    $('.faded').css('display','block');
  }else{
    $('.faded').hide();
  }
  

  if (area != 'undefined') {
    for (var i=0; i < ($("[id*=_unitario]")).length; i++) { 
      unitario = $("[id*=_unitario]")
      var times = parseInt($("[id*=_unitario]").length);
      var area = parseInt($("[id*=_area]").val());
      var unit = parseInt($("[id*=_unitario]").val());
      total = parseFloat($("[id*=_unitario]")[i].value) * parseFloat($("[id*=_area]")[i].value);
      var vtotal = $("[id*=vtotal]")[i];
      $(vtotal).append(total);
    }
  } 
});
