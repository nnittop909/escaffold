class CreateMiscellaneousCosts < ActiveRecord::Migration[5.0]
  def change
    create_table :miscellaneous_costs do |t|
      t.string :description
      t.decimal :amount
      t.belongs_to :work_detail, index: true, foreign_key: true

      t.timestamps
    end
  end
end
