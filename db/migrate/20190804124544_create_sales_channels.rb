class CreateSalesChannels < ActiveRecord::Migration[5.2]
  def change
    create_table :sales_channels do |t|
      t.string :name
      t.timestamps
    end
  end
end
