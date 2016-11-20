class CreateNoticeToProceeds < ActiveRecord::Migration[5.0]
  def change
    create_table :notice_to_proceeds do |t|
      t.datetime :date
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
