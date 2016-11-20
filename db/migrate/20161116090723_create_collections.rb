class CreateCollections < ActiveRecord::Migration[5.0]
  def change
    create_table :collections do |t|
      t.datetime :date
      t.belongs_to :project, foreign_key: true
      t.decimal :amount

      t.timestamps
    end
  end
end
