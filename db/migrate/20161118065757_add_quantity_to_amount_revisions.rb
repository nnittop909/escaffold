class AddQuantityToAmountRevisions < ActiveRecord::Migration[5.0]
  def change
    add_column :amount_revisions, :quantity, :decimal
  end
end
