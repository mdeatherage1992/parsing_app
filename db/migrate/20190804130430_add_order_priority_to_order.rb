class AddOrderPriorityToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :order_priority, :string
  end
end
