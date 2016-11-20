class RemoveColumnAmountFromBidExpenses < ActiveRecord::Migration[5.0]
  def change
  	remove_column :bid_expenses, :amount, :decimal
  end
end
