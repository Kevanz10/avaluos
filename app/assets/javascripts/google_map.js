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