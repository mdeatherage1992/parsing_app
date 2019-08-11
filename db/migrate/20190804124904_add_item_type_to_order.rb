class AddItemTypeToOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :item_type, foreign_key: true
  end
end
