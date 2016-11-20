class AddTypeToAmountRevisions < ActiveRecord::Migration[5.0]
  def change
    add_column :amount_revisions, :type, :string
  end
end
