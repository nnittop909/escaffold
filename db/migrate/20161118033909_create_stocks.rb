class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.belongs_to :inventory, index: true, foreign_key: true
      t.decimal :quantity
      t.datetime :date

      t.timestamps
    end
  end
end
