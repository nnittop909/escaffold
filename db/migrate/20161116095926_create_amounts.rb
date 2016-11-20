class CreateAmounts < ActiveRecord::Migration[5.0]
  def change
    create_table :amounts do |t|
      t.string :type
      t.references :account, foreign_key: true
      t.references :entry, foreign_key: true
      t.decimal :amount, :precision => 20, :scale => 10

      t.timestamps
    end
    add_index :amounts, :type
    add_index :amounts, [:account_id, :entry_id]
    add_index :amounts, [:entry_id, :account_id]
  end
end
