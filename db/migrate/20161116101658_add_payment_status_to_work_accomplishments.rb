class AddPaymentStatusToWorkAccomplishments < ActiveRecord::Migration[5.0]
  def change
  	add_column :work_accomplishments, :payment_status, :integer
  end
end
