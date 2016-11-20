class AddPurposeToOrders < ActiveRecord::Migration[5.0]
  def change
  	add_column :orders, :purpose, :string
  end
end
