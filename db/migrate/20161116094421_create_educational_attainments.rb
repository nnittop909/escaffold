class CreateEducationalAttainments < ActiveRecord::Migration[5.0]
  def change
    create_table :educational_attainments do |t|
      t.string :degree
      t.belongs_to :employee, index: true, foreign_key: true

      t.timestamps
    end
  end
end
