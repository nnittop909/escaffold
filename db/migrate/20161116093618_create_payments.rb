class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.integer :paymentable_id, index: true
      t.string :paymentable_type, index: true
      t.integer :payment_type
      t.datetime :date

      t.timestamps
    end
  end
end
