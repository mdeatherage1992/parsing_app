var google;
var map;
var data = '<%= @feature['coordinates'] %>'
function initMap() {
var items = []
var coords =[]
 x = data.split(', ')
 x.forEach(function(x){
   new_x = x.replace(/[\[\]']+/g,'')
   items.push(new_x)
 })

 for (var i = 0; i < items.length; i += 2) {
    var obj = {lat: parseFloat(items[i]), lng: parseFloat(items[i + 1]) }
    coords.push(obj)
 }
var song = parseFloat(coords[0]['lng'])
var bird = parseFloat(coords[0]['lat'])
console.log(song,bird)
 var map = new google.maps.Map(document.getElementById('map'), {
   zoom: 15,
   center: {lat: song, lng: bird},
   mapTypeId: 'terrain'
 });

 triangleCoords = coords

 // Construct the polygon.
 var bermudaTriangle = new google.maps.Polygon({
   paths: triangleCoords.slice(0,3),
   strokeColor: '#FF0000',
   strokeOpacity: 0.8,
   strokeWeight: 2,
   fillColor: '#FF0000',
   fillOpacity: 0.35
 });
 console.log(coords.slice(0,4))
 bermudaTriangle.setMap(map);
    }
