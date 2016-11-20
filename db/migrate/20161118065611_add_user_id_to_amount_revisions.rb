class AddUserIdToAmountRevisions < ActiveRecord::Migration[5.0]
  def change
    add_column :amount_revisions, :user_id, :integer
    add_index :amount_revisions, :user_id
  end
end
