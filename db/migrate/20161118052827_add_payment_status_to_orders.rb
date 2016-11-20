class AddPaymentStatusToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :payment_status, :integer, default: 1
  end
end
