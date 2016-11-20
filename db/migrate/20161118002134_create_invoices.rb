class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.decimal :amount
      t.integer :invoiceable_id
      t.string :invoiceable_type
      t.datetime :date
      t.string :invoiced_to

      t.timestamps
    end
    add_index :invoices, :invoiceable_id
    add_index :invoices, :invoiceable_type
  end
end
