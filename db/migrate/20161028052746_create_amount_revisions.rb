class CreateAmountRevisions < ActiveRecord::Migration[5.0]
  def change
    create_table :amount_revisions do |t|
      t.references :project, foreign_key: true
      t.decimal :amount
      t.string :remarks

      t.timestamps
    end
  end
end
