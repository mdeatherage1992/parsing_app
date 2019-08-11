class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.datetime :order_date
      t.integer :order_id
      t.integer :units_sold
      t.integer :unit_price
      t.integer :unit_cost
      t.integer :total_cost
      t.integer :total_profit
      t.timestamps
    end
  end
end
