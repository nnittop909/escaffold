class AddEquipmentIdToIssuedInventories < ActiveRecord::Migration[5.0]
  def change
  	add_column :issued_inventories, :equipment_id, :integer, index: true, foreign_key: true
  end
end
