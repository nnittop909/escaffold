class AddWorkDetailIdToAmountRevisions < ActiveRecord::Migration[5.0]
  def change
    add_column :amount_revisions, :work_detail_id, :integer
    add_index :amount_revisions, :work_detail_id
  end
end
