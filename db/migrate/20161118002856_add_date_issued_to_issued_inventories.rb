class AddDateIssuedToIssuedInventories < ActiveRecord::Migration[5.0]
  def change
    add_column :issued_inventories, :date_issued, :datetime
  end
end
