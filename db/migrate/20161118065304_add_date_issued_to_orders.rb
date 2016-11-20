class AddDateIssuedToOrders < ActiveRecord::Migration[5.0]
  def change
  	add_column :orders, :date_issued, :datetime
  end
end
