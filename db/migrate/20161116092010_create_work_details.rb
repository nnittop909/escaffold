class CreateWorkDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :work_details do |t|
      t.belongs_to :project, index: true, foreign_key: true
      t.string :code
      t.string :description
      t.decimal :quantity
      t.string :unit
      t.decimal :total_cost
      t.decimal :unit_cost
      t.boolean :accomplished

      t.timestamps
    end
  end
end
