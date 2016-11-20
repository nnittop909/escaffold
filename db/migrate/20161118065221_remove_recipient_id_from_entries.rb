class RemoveRecipientIdFromEntries < ActiveRecord::Migration[5.0]
  def change
    remove_column :entries, :recipient_id, :integer
  end
end
