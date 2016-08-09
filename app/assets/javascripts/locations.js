var lastInfoWindow;
function buildMap(locations)
{
  $mapContainer = $('.locationsmap');

  var map = new google.maps.Map($mapContainer.get(0), {
    zoom: 12
  });

  var startLat = 10000000;
  var startLng = 10000000;
  var endLat = -100000000;
  var endLng = -100000000;

  for (i = 0; i < locations.length; i++) {
    var location = locations[i];

    if (location.lat < startLat) {
      startLat = location.lat;
    }
    if (location.lat > endLat) {
      endLat = location.lat;
    }
    if (location.lng < startLng) {
      startLng = location.lng;
    }
    if (location.lng > endLng) {
      endLng = location.lng;
    }

    var marker = new google.maps.Marker({
      position: location,
      map: map
    });

    var infoWindow = createLocationInfoWindow(location);
    marker.addListener('click', (function() {
      if (lastInfoWindow) {
        lastInfoWindow.close();
      }

      this.infoWindow.open(map, this.marker);
      lastInfoWindow = this.infoWindow;
    }).bind({infoWindow: infoWindow, marker: marker}));

  }

  var centerLat = (startLat + endLat) / 2;
  var centerLng = (startLng + endLng) / 2;

  map.setCenter(new google.maps.LatLng(centerLat, centerLng));
  var bounds = new google.maps.LatLngBounds(
    new google.maps.LatLng(startLat, startLng),
    new google.maps.LatLng(endLat, endLng)
  );
  map.panToBounds(bounds);
  map.fitBounds(bounds);
}

function createLocationInfoWindow(location) {
  var content = '<div>\
    <div><a  target="_blank" href="/locations/' + location.id + '">' + location.title + '</a></div>\
    <div>' + location.createdAt + '</div>\
    <div><img src="' + location.imageUrl + '" width="100" /></div>\
    <div>' + location.permission +'</div>\
    <div>' + location.growingStatus + '</div>\
  </div>';

  return new google.maps.InfoWindow({content: content});
}
