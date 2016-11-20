class RemoveTypeFromAmountRevisions < ActiveRecord::Migration[5.0]
  def change
    remove_column :amount_revisions, :type, :string
    add_column :amount_revisions, :revision_type, :integer
  end
end
