class AddRecipientToSales < ActiveRecord::Migration[5.0]
  def change
  	add_column :sales, :recipient, :string
  end
end
