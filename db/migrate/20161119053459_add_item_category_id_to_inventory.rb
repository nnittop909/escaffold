class AddItemCategoryIdToInventory < ActiveRecord::Migration[5.0]
  def change
  	add_column :inventories, :item_category_id, :integer
  	add_index :inventories, :item_category_id
  end
end
