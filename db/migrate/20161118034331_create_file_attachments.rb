class CreateFileAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :file_attachments do |t|
      t.belongs_to :project, index: true, foreign_key: true
      t.datetime :date
      t.text :description

      t.timestamps
    end
  end
end
