class CreateWorkAccomplishments < ActiveRecord::Migration[5.0]
  def change
    create_table :work_accomplishments do |t|
      t.text :remarks
      t.decimal :quantity
      t.belongs_to :work_detail, index: true, foreign_key: true
      t.datetime :date_accomplished

      t.timestamps
    end
  end
end
