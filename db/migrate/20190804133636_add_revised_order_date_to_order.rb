class AddRevisedOrderDateToOrder < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :order_date
    add_column :orders, :order_date,:string
  end
end
