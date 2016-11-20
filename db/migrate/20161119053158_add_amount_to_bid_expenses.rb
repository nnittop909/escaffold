class AddAmountToBidExpenses < ActiveRecord::Migration[5.0]
  def change
  	add_column :bid_expenses, :amount, :decimal, default: 0
  end
end
