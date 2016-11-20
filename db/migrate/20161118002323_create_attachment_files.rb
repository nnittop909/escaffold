class CreateAttachmentFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :attachment_files do |t|
      t.belongs_to :project, index: true, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
