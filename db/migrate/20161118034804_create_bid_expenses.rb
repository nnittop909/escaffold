class CreateBidExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :bid_expenses do |t|
      t.belongs_to :project, index: true, foreign_key: true
      t.string :description
      t.decimal :amount
      t.datetime :date

      t.timestamps
    end
  end
end
