class AddReferenceNumberToEntries < ActiveRecord::Migration[5.0]
  def change
    add_column :entries, :reference_number, :string
  end
end
