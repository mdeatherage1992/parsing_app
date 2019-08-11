require 'csv'
require 'json'
namespace :import_json do
  desc "TODO"
  task import_json_city_data: :environment do
    items = []
    file = File.read('lib/tasks/citylots.json')
    data = JSON.parse(file)
    body = data['features']
    body.each do |row|
      properties = row['properties']
      if row['geometry'] != nil 
      if row['geometry']['type'] == 'Polygon'
      feature = RGeo::GeoJSON.decode(row['geometry'])
      property = Property.create(mapblklot:properties['MAPBLKLOT'] , blklot: properties['BLKLOT'], block_num: properties['BLOCK_NUM'],
        lot_num: properties['LOT_NUM'] , from_st: properties['FROM_ST'] ,to_st: properties['TO_ST'] , street: properties['STREET'] ,
        st_type: properties['ST_TYPE'] , odd_even: properties['ODD_EVEN'], polygon_data: feature)
        end
      end
    end
  end
end



namespace :import_csv do
  desc "TODO"
  task import_csv_sales_data: :environment do
    items = []
    CSV.foreach('lib/tasks/records.csv', headers: true) do |row|
      items << row.to_h
    end
    items.each do |x|
      region = Region.find_or_create_by(name: x["Region"])
      country = Country.find_or_create_by(name: x["Country"])
      item_type = ItemType.find_or_create_by(name: x["Item Type"])
      sales_channel = SalesChannel.find_or_create_by(name: x["Sales Channel"])
      order = Order.find_by(order_id: x["Order ID"])
      order_date_slug = x["Order Date"].split("/")
      order_date_real = DateTime.new(order_date_slug[2].to_i,order_date_slug[0].to_i,order_date_slug[1].to_i)
      ship_date_slug = x["Ship Date"].split("/")
      ship_date_real = DateTime.new(ship_date_slug[2].to_i,ship_date_slug[0].to_i,ship_date_slug[1].to_i)
      if order.nil?
        order = Order.create(order_id: x["Order ID"],
        order_priority: x["Order Priority"],
        order_date: order_date_real,
        ship_date: ship_date_real,
        units_sold: x["Units Sold"],
        unit_price: x["Unit Price"],
        unit_cost: x["Unit Cost"],
        total_revenue: x["Total Revenue"],
        total_cost: x["Total Cost"],
        total_profit: x["Total Profit"],
        region_id: region.id,
        country_id: country.id,
        item_type_id: item_type.id,
        sales_channel_id: sales_channel.id
      )
      end
    end
  end

end
