class RemoveQuantityFromInventories < ActiveRecord::Migration[5.0]
  def change
    remove_column :inventories, :quantity, :decimal
     remove_column :inventories, :cost, :decimal
  end
end
