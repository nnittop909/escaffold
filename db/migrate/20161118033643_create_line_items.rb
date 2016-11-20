class CreateLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :line_items do |t|
      t.belongs_to :inventory, index: true, foreign_key: true
      t.belongs_to :cart, index: true, foreign_key: true
      t.decimal :quantity, default: 1

      t.timestamps
    end
  end
end
