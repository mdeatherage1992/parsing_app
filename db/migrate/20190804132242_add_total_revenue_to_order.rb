class AddTotalRevenueToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :total_revenue, :integer
  end
end
