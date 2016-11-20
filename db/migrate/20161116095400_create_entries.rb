class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.datetime :date
      t.integer :entriable_id
      t.string :entriable_type
      t.string :description
      t.integer :recipient_id, index: true

      t.timestamps
    end
    add_index :entries, :entriable_id
    add_index :entries, :entriable_type
  end
end
