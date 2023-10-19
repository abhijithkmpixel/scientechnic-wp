
  mapboxgl.accessToken = 'pk.eyJ1Ijoic3ViaW5tayIsImEiOiJja3BmMnEzNmwxeGliMm9sbG16Yzh6eGlkIn0.o6MbUgPk12xncGQyGkP9sA';
    var map = new mapboxgl.Map({
        container: 'map_canvas',
        style: 'mapbox://styles/mapbox/streets-v9',
        center: [55.129472, 25.000347],
        zoom: 8
    });

    var office1 = [55.318826, 25.259630]; //Corporate office
    var office2 = [55.129472, 25.000347]; //Warehouse and Logistics
    var office3 = [55.129472, 25.000347]; //Switchgear Factory
    var office4 = [55.12839, 25.00022]; //Sheet Metal Manufacturing
    var office5 = [55.234538,25.148158]; //Cable Yard
    var office6 = [56.329927, 25.133594]; //Fujairah Local Offices
    var office7 = [54.486717,24.369034]; //Abu Dhabi Local Offices
    var office8 = [55.344853,25.271891]; //Customer Sales Counter
    var office9 = [55.2950328,25.1869371]; //Customer Sales Counter
    // mapCenter = new google.maps.LatLng(25.259630, 55.318826);
    const CCM_REL = ""
 mapIconUrl = CCM_REL + "/themes/scientechnic/images/marker.png";

 // marker1 = new google.maps.Marker({
 //          position: office1,
 //          map: map,
 //          animation: google.maps.Animation.DROP,
 //          icon: mapIconUrl,
 //          title:mapTitle
 //      });
 var popup = new mapboxgl.Popup()
.setHTML('<div class="markerInfo"><p>Corporate office, Dubai.</p><a href="http://maps.google.com/maps?daddr='+office1+'" target="_blank">[ View on Google Maps ]</a></div>');
 var  marker1  = new mapboxgl.Marker()
  .setLngLat(office1)
  .setPopup(popup)
  .addTo(map);

 var popup2 = new mapboxgl.Popup()
.setHTML('<div class="markerInfo"><p>Warehouse and Logistics, Dubai</p><a href="http://maps.google.com/maps?daddr='+office2+'" target="_blank">[ View on Google Maps ]</a></div>');
 var  marker2  = new mapboxgl.Marker()
  .setLngLat(office2)
  .setPopup(popup2)
  .addTo(map);


 var popup3 = new mapboxgl.Popup()
.setHTML('<div class="markerInfo"><p>Switchgear Factory, Dubai</p><a href="http://maps.google.com/maps?daddr='+office3+'" target="_blank">[ View on Google Maps ]</a></div>');
 var  marker3  = new mapboxgl.Marker()
  .setLngLat(office3)
  .setPopup(popup3)
  .addTo(map);

 var popup4 = new mapboxgl.Popup()
.setHTML('<div class="markerInfo"><p>Sheet Metal Manufacturing, Dubai</p><a href="http://maps.google.com/maps?daddr='+office4+'" target="_blank">[ View on Google Maps ]</a></div>');
 var  marker4  = new mapboxgl.Marker()
  .setLngLat(office4)
  .setPopup(popup4)
  .addTo(map);


 var popup5 = new mapboxgl.Popup()
.setHTML('<div class="markerInfo"><p>Cable Yard, Dubai</p><a href="http://maps.google.com/maps?daddr='+office5+'" target="_blank">[ View on Google Maps ]</a></div>');
 var  marker5  = new mapboxgl.Marker()
  .setLngLat(office5)
  .setPopup(popup5)
  .addTo(map);


 var popup6 = new mapboxgl.Popup()
.setHTML('<div class="markerInfo"><p>Local Office, Fujairah</p><a href="http://maps.google.com/maps?daddr='+office6+'" target="_blank">[ View on Google Maps ]</a></div>');
 var  marker6  = new mapboxgl.Marker()
  .setLngLat(office6)
  .setPopup(popup6)
  .addTo(map);


 var popup7 = new mapboxgl.Popup()
.setHTML('<div class="markerInfo"><p>Local Office, Abu Dhabi</p><a href="http://maps.google.com/maps?daddr='+office7+'" target="_blank">[ View on Google Maps ]</a></div>');
 var  marker7  = new mapboxgl.Marker()
  .setLngLat(office7)
  .setPopup(popup7)
  .addTo(map);


 var popup8 = new mapboxgl.Popup()
.setHTML('<div class="markerInfo"><p>Customer Sales Counter</p><a href="http://maps.google.com/maps?daddr='+office8+'" target="_blank">[ View on Google Maps ]</a></div>');
 var  marker8  = new mapboxgl.Marker()
  .setLngLat(office8)
  .setPopup(popup8)
  .addTo(map);

 var popup9 = new mapboxgl.Popup()
.setHTML('<div class="markerInfo"><p>Lighting Solutions</p><a href="http://maps.google.com/maps?daddr='+office9+'" target="_blank">[ View on Google Maps ]</a></div>');
 var  marker9  = new mapboxgl.Marker()
  .setLngLat(office9)
  .setPopup(popup9)
  .addTo(map);


$(".contact-info a[href*='#marker']").click(function(){
    $(".mapboxgl-popup").remove();
    var markerIndex = $(this).attr("href");
    if(markerIndex=="#marker1"){
      map.flyTo({center: office1});
      popup.addTo(map);
    }
    if(markerIndex=="#marker2"){
      popup2.addTo(map);
      map.flyTo({center: office2});
    }
    if(markerIndex=="#marker3"){
      popup3.addTo(map);
      map.flyTo({center: office3});
    }
    if(markerIndex=="#marker4"){
      popup4.addTo(map);
      map.flyTo({center: office4});
    }
    if(markerIndex=="#marker5"){
      popup5.addTo(map);
      map.flyTo({center: office5});
    }
    if(markerIndex=="#marker6"){
      popup6.addTo(map);
      map.flyTo({center: office6});
    }
    if(markerIndex=="#marker7"){
      popup7.addTo(map);
      map.flyTo({center: office7});
    }
    if(markerIndex=="#marker8"){
       popup8.addTo(map);
       map.flyTo({center: office8});
    }
    if(markerIndex=="#marker9"){
       popup9.addTo(map);
       map.flyTo({center: office9});
    }

    $('html, body').animate({
        scrollTop: $(".googlemapshow.contact").offset().top - 100
    }, 800);
    return false;
});


/*var map,mapIconUrl,mapCenter,mapTitle,marker1,marker2,marker3,marker4,marker5,marker6,marker7,marker8,markerInfo1,markerInfo2,markerInfo3,markerInfo4,markerInfo5,markerInfo6,markerInfo7,markerInfo8,infowindow1,infowindow2,infowindow3,infowindow4,infowindow5,infowindow6,infowindow7,infowindow8,office1,office2,office3,office4,office5,office6,office7,office8;
function initialize() {
    var mapStyle = [
        {
            "elementType": "geometry",
            "stylers": [
                {
                    "color": "#f5f5f5"
                }
            ]
        },
        {
            "elementType": "labels.icon",
            "stylers": [
                {
                    "visibility": "off"
                }
            ]
        },
        {
            "elementType": "labels.text.fill",
            "stylers": [
                {
                    "color": "#616161"
                }
            ]
        },
        {
            "elementType": "labels.text.stroke",
            "stylers": [
                {
                    "color": "#f5f5f5"
                }
            ]
        },
        {
            "featureType": "administrative.land_parcel",
            "elementType": "labels.text.fill",
            "stylers": [
                {
                    "color": "#bdbdbd"
                }
            ]
        },
        {
            "featureType": "landscape.man_made",
            "elementType": "geometry.fill",
            "stylers": [
                {
                    "color": "#e5e5e5"
                },
                {
                    "visibility": "on"
                }
            ]
        },
        {
            "featureType": "poi",
            "elementType": "geometry",
            "stylers": [
                {
                    "color": "#eeeeee"
                }
            ]
        },
        {
            "featureType": "poi",
            "elementType": "labels.text.fill",
            "stylers": [
                {
                    "color": "#757575"
                }
            ]
        },
        {
            "featureType": "poi.park",
            "elementType": "geometry",
            "stylers": [
                {
                    "color": "#e5e5e5"
                }
            ]
        },
        {
            "featureType": "poi.park",
            "elementType": "labels.text.fill",
            "stylers": [
                {
                    "color": "#9e9e9e"
                }
            ]
        },
        {
            "featureType": "road",
            "elementType": "geometry",
            "stylers": [
                {
                    "color": "#ffffff"
                }
            ]
        },
        {
            "featureType": "road.arterial",
            "elementType": "labels.text.fill",
            "stylers": [
                {
                    "color": "#757575"
                }
            ]
        },
        {
            "featureType": "road.highway",
            "elementType": "geometry",
            "stylers": [
                {
                    "color": "#c9c9c9"
                }
            ]
        },
        {
            "featureType": "road.highway",
            "elementType": "labels.text.fill",
            "stylers": [
                {
                    "color": "#616161"
                }
            ]
        },
        {
            "featureType": "road.local",
            "elementType": "labels.text.fill",
            "stylers": [
                {
                    "color": "#9e9e9e"
                }
            ]
        },
        {
            "featureType": "transit.line",
            "elementType": "geometry",
            "stylers": [
                {
                    "color": "#e5e5e5"
                }
            ]
        },
        {
            "featureType": "transit.station",
            "elementType": "geometry",
            "stylers": [
                {
                    "color": "#eeeeee"
                }
            ]
        },
        {
            "featureType": "water",
            "elementType": "geometry",
            "stylers": [
                {
                    "color": "#c9c9c9"
                }
            ]
        },
        {
            "featureType": "water",
            "elementType": "labels.text.fill",
            "stylers": [
                {
                    "color": "#9e9e9e"
                }
            ]
        }
    ];
    office1 = new google.maps.LatLng(25.259630, 55.318826); //Corporate office
    office2 = new google.maps.LatLng(25.000347, 55.129472); //Warehouse and Logistics
    office3 = new google.maps.LatLng(25.000347, 55.129472); //Switchgear Factory
    office4 = new google.maps.LatLng(25.00022, 55.12839); //Sheet Metal Manufacturing
    office5 = new google.maps.LatLng(25.148158, 55.234538); //Cable Yard
    office6 = new google.maps.LatLng(25.133594, 56.329927); //Fujairah Local Offices
    office7 = new google.maps.LatLng(24.369034, 54.486717); //Abu Dhabi Local Offices
    office8 = new google.maps.LatLng(25.271891, 55.344853); //Customer Sales Counter
    mapCenter = new google.maps.LatLng(25.259630, 55.318826);

    mapIconUrl = CCM_REL + "/themes/scientechnic/images/marker.png";

    var myOptions = {
        zoom: 14,
        zoomControl: true,
        zoomControlOptions: {
            position: google.maps.ControlPosition.LEFT_CENTER,
            style: google.maps.ZoomControlStyle.SMALL
        },
        scaleControl: true,
        scrollwheel: false,
        center: mapCenter,
        mapTypeId: google.maps.MapTypeId.ROADMAP,   //ROADMAP or SATELLITE
        styles: mapStyle,
        panControl: true,
        mapTypeControl: false,
        panControlOptions: {
            position: google.maps.ControlPosition.RIGHT_CENTER
        },
        streetViewControl: false
    };
    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

    //Corporate office
    marker1 = new google.maps.Marker({
          position: office1,
          map: map,
          animation: google.maps.Animation.DROP,
          icon: mapIconUrl,
          title:mapTitle
      });
      markerInfo1 = '<div class="markerInfo"><p>Corporate office, Dubai.</p><a href="http://maps.google.com/maps?daddr='+office1+'" target="_blank">[ View on Google Maps ]</a></div>';

      infowindow1 = new google.maps.InfoWindow({
        content: markerInfo1,
        maxWidth: 200
      });
      marker1.addListener('click', function() {
        infowindow1.open(map, marker1);
      });

      /* Warehouse and Logistics 
       marker2 = new google.maps.Marker({
          position: office2,
          map: map,
          animation: google.maps.Animation.DROP,
          icon: mapIconUrl,
          title:mapTitle
      });
      markerInfo2 = '<div class="markerInfo"><p>Warehouse and Logistics, Dubai</p><a href="http://maps.google.com/maps?daddr='+office2+'" target="_blank">[ View on Google Maps ]</a></div>';

      infowindow2 = new google.maps.InfoWindow({
        content: markerInfo2,
        maxWidth: 200
      });
      marker2.addListener('click', function() {
        infowindow2.open(map, marker2);
      });

      /* Switchgear Factory 
       marker3 = new google.maps.Marker({
          position: office3,
          map: map,
          animation: google.maps.Animation.DROP,
          icon: mapIconUrl,
          title:mapTitle
      });
       markerInfo3 = '<div class="markerInfo"><p>Switchgear Factory, Dubai</p><a href="http://maps.google.com/maps?daddr='+office3+'" target="_blank">[ View on Google Maps ]</a></div>';

      infowindow3 = new google.maps.InfoWindow({
        content: markerInfo3,
        maxWidth: 200
      });
      marker3.addListener('click', function() {
        infowindow3.open(map, marker3);
      });

      /* Sheet Metal Manufacturing 
       marker4 = new google.maps.Marker({
          position: office4,
          map: map,
          animation: google.maps.Animation.DROP,
          icon: mapIconUrl,
          title:mapTitle
      });
       markerInfo4 = '<div class="markerInfo"><p>Sheet Metal Manufacturing, Dubai</p><a href="http://maps.google.com/maps?daddr='+office4+'" target="_blank">[ View on Google Maps ]</a></div>';

      infowindow4 = new google.maps.InfoWindow({
        content: markerInfo4,
        maxWidth: 200
      });
      marker4.addListener('click', function() {
        infowindow4.open(map, marker4);
      });

      /* Cable Yard 
       marker5 = new google.maps.Marker({
          position: office5,
          map: map,
          animation: google.maps.Animation.DROP,
          icon: mapIconUrl,
          title:mapTitle
      });
       markerInfo5 = '<div class="markerInfo"><p>Cable Yard, Dubai</p><a href="http://maps.google.com/maps?daddr='+office5+'" target="_blank">[ View on Google Maps ]</a></div>';

      infowindow5 = new google.maps.InfoWindow({
        content: markerInfo5,
        maxWidth: 200
      });
      marker5.addListener('click', function() {
        infowindow5.open(map, marker5);
      });

      /* Fujairah Local Offices 
       marker6 = new google.maps.Marker({
          position: office6,
          map: map,
          animation: google.maps.Animation.DROP,
          icon: mapIconUrl,
          title:mapTitle
      });
       markerInfo6 = '<div class="markerInfo"><p>Local Office, Fujairah</p><a href="http://maps.google.com/maps?daddr='+office6+'" target="_blank">[ View on Google Maps ]</a></div>';

      infowindow6 = new google.maps.InfoWindow({
        content: markerInfo6,
        maxWidth: 200
      });
      marker6.addListener('click', function() {
        infowindow6.open(map, marker6);
      });

      /* Abu Dhabi Local Office 
       marker7 = new google.maps.Marker({
          position: office7,
          map: map,
          animation: google.maps.Animation.DROP,
          icon: mapIconUrl,
          title:mapTitle
      });
       markerInfo7 = '<div class="markerInfo"><p>Local Office, Abu Dhabi</p><a href="http://maps.google.com/maps?daddr='+office7+'" target="_blank">[ View on Google Maps ]</a></div>';

      infowindow7 = new google.maps.InfoWindow({
        content: markerInfo7,
        maxWidth: 200
      });
      marker7.addListener('click', function() {
        infowindow7.open(map, marker7);
      });

    /* Customer Sales Counter 
    marker8 = new google.maps.Marker({
        position: office8,
        map: map,
        animation: google.maps.Animation.DROP,
        icon: mapIconUrl,
        title:mapTitle
    });
    markerInfo8 = '<div class="markerInfo"><p>Customer Sales Counter</p><a href="http://maps.google.com/maps?daddr='+office8+'" target="_blank">[ View on Google Maps ]</a></div>';

    infowindow8 = new google.maps.InfoWindow({
        content: markerInfo8,
        maxWidth: 200
    });
    marker8.addListener('click', function() {
        infowindow8.open(map, marker8);
    });
}

function Bounce(markerClicked,officeMarker) {
    marker1.setVisible(false);marker2.setVisible(false);marker3.setVisible(false);marker4.setVisible(false);marker5.setVisible(false);marker6.setVisible(false);marker7.setVisible(false);marker8.setVisible(false);
    markerClicked.setVisible(true);
    markerClicked.setAnimation(google.maps.Animation.BOUNCE);
    google.maps.event.trigger(markerClicked, "click");
    map.panTo(officeMarker);
}

google.maps.event.addDomListener(window, 'load', initialize);
*/
//show marker on map on click of see location



