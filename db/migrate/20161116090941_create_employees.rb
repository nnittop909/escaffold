class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :mobile_number
      t.string :email
      t.string :photo_id
      t.integer :position
      t.decimal :rate
      t.integer :project_id, index: true

      t.timestamps
    end
  end
end
