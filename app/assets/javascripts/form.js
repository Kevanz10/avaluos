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
  var suma = 0;
  var comparative = parseFloat($("[id*=_unitario]")[0].value);
  var mayor = 0;
  var menor = 0;
  var valoruvr = parseFloat($('#vuvr').val('243.2294'));
  var valueuvr = $('#vuvr').val();
  var current ;
  var current_porcentaje;
  var length = $("[id*=_unitario]").length;
  var valor_total = 0;
  var currentvtotal;currentvtotal
 
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
    //Total value loop
    for (var i=0; i < length-1; i++) {
      current = parseFloat($("[id*=_unitario]")[i].value);
      suma +=parseFloat($("[id*=_unitario]")[i].value);
    }
    
    var totaluvr= suma/valueuvr ;
    var h = parseFloat(totaluvr.toFixed(3));
    $('#valueuvr').val(h);
    //valor total function
    $.each($("[id*=vtotal]"), function(index,value) {
      valor_total +=parseFloat($(this).text());
      current_porcentaje =parseFloat(parseFloat($(this).text())/valor_total)*100;
    });
    $('#suma').text(valor_total);

    //porcentaje function
    $.each($("[id*=vtotal]"), function(index,value) {
      current_porcentaje =parseFloat(parseFloat($(this).text())/valor_total)*100;
      current_porcentaje = current_porcentaje.toFixed(2);
      $(this).parent().next().find('#porcent').text(current_porcentaje);
      debugger;
    });
    
  }    
});

