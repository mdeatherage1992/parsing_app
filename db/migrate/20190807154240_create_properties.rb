class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :mapblklot
      t.string :blklot
      t.string :block_num
      t.string :lot_num
      t.string :from_st
      t.string :to_st
      t.string :street
      t.string :st_type
      t.string :odd_even
      t.geometry :location
      t.timestamps
    end
  end
end
