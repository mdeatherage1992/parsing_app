class AddCountryToOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :country, foreign_key: true
  end
end
