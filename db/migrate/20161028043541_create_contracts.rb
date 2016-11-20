class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.references :project, foreign_key: true
      t.references :contractor, foreign_key: true
      t.decimal :amount_subcontracted

      t.timestamps
    end
  end
end
