class AddTotalPriceToLineItems < ActiveRecord::Migration[5.0]
  def change
    add_column :line_items, :total_cost, :decimal
    add_column :line_items, :unit_cost, :decimal
  end
end
