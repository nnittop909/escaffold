class AddContractIdToIssuedInventories < ActiveRecord::Migration[5.0]
  def change
  	add_column :issued_inventories, :contractor_id, :integer, index: true, foreign_key: true
  end
end
