class AddTotalCostToRestockings < ActiveRecord::Migration[5.0]
  def change
  	add_column :restockings, :total_cost, :decimal
  end
end
