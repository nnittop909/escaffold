class RemoveTotalCostAndUnitCostFromItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :total_cost, :string
    remove_column :items, :unit_cost, :string
  end
end
