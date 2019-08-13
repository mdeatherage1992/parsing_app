class PropertiesController < ApplicationController


def index
  @props = Property.paginate(page: params[:page]).per_page(20)
  @testing = Property.last.polygon_data
  @feature = RGeo::GeoJSON.encode(@testing)
end

def show
  @props = Property.find_by(id: params[:id])
  @testing = Property.find_by(id: params[:id])
  @feature = RGeo::GeoJSON.encode(@testing.polygon_data)
end

def map_to_google(coords)
  feature = RGeo::GeoJSON.encode(coords)
  binding.pry
end


# // Define the LatLng coordinates for the outer path.
# var outerCoords = [
#   {lat: -32.364, lng: 153.207}, // north west
#   {lat: -35.364, lng: 153.207}, // south west
#   {lat: -35.364, lng: 158.207}, // south east
#   {lat: -32.364, lng: 158.207}  // north east
# ];
#
# // Define the LatLng coordinates for an inner path.
# var innerCoords1 = [
#   {lat: -33.364, lng: 154.207},
#   {lat: -34.364, lng: 154.207},
#   {lat: -34.364, lng: 155.207},
#   {lat: -33.364, lng: 155.207}
# ];
#
# // Define the LatLng coordinates for another inner path.
# var innerCoords2 = [
#   {lat: -33.364, lng: 156.207},
#   {lat: -34.364, lng: 156.207},
#   {lat: -34.364, lng: 157.207},
#   {lat: -33.364, lng: 157.207}
# ];


end
