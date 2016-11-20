class AddTotalCostAndUnitCostToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :total_cost, :decimal
    add_column :items, :unit_cost, :decimal
    add_column :items, :payment_status, :integer
  end
end
