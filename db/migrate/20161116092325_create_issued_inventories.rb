class CreateIssuedInventories < ActiveRecord::Migration[5.0]
  def change
    create_table :issued_inventories do |t|
      t.integer :inventoriable_id
      t.string :inventoriable_type
      t.string :code
      t.string :description
      t.string :unit
      t.decimal :quantity
      t.decimal :unit_cost
      t.decimal :total_cost
      t.integer :inventory_id

      t.timestamps
    end
    add_index :issued_inventories, :inventoriable_id
    add_index :issued_inventories, :inventoriable_type
    add_index :issued_inventories, :inventory_id
  end
end
