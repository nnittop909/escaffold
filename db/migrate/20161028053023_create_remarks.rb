class CreateRemarks < ActiveRecord::Migration[5.0]
  def change
    create_table :remarks do |t|
      t.references :project, foreign_key: true
      t.string :title
      t.text :content
      t.integer :remarker_id

      t.timestamps
    end
    add_index :remarks, :remarker_id
  end
end
