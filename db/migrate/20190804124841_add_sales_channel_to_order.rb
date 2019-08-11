class AddSalesChannelToOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :sales_channel, foreign_key: true
  end
end
