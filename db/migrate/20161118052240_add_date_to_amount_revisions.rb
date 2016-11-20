class AddDateToAmountRevisions < ActiveRecord::Migration[5.0]
  def change
    add_column :amount_revisions, :date, :datetime
  end
end
