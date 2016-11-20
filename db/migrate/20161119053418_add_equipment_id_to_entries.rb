class AddEquipmentIdToEntries < ActiveRecord::Migration[5.0]
  def change
    add_column :entries, :equipment_id, :integer
    add_index :entries, :equipment_id
  end
end
