class AddPriceToInventories < ActiveRecord::Migration[5.0]
  def change
    add_column :inventories, :price, :decimal
  end
end
