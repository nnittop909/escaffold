class AddEntryTypeToEntries < ActiveRecord::Migration[5.0]
  def change
    add_column :entries, :entry_type, :integer
    add_index :entries, :entry_type
  end
end
