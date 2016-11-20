class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.decimal :quantity
      t.belongs_to :inventory, index: true, foreign_key: true
      t.decimal :amount
      t.datetime :date

      t.timestamps
    end
  end
end
