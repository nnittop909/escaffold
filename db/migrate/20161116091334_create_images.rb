class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :file_id
      t.integer :imageable_id, index: true
      t.string :imageable_type, index: true

      t.timestamps
    end
  end
end
