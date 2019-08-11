class AddPolygonToProperty < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :polygon_data, :st_polygon
  end
end
