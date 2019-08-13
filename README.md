# Parsing Application for CSV Data

Steps to Import Local CSV:

* Bundle

* Rails db:create

* Rails db:migrate

* rake import_csv:import_csv_sales_data

* rails s

# Parsing Application for JSON Data

Steps to Import JSON:

* Bundle

* Rails db:create

* Rails db:migrate

* psql => add POSTGIS extension

* Fetch JSON data (180MB) (git clone git@github.com:zemirco/sf-city-lots-json.git) and add JSON file to lib/tasks Credit: https://github.com/zeMirco/sf-city-lots-json

* rename JSON file to citylots.json

* rake import_json:import_json_city_data

* Retrieve Google Maps API Key (https://developers.google.com/maps/documentation/javascript/get-api-key)

* Go to views/properties/show.html => to the bottom => add API Key
<script async
src="https://maps.googleapis.com/maps/api/js?key=YOURAPIKEY&callback=initMap">
</script>

* rails s
