class CreateEquipment < ActiveRecord::Migration[5.0]
  def change
    create_table :equipment do |t|
      t.string :plate_number
      t.string :make
      t.string :model
      t.integer :employee_id
      t.integer :project_id
      t.integer :status
      t.decimal :acquisition_cost
      t.datetime :acquisition_date
      t.string :photo
      t.string :chassis_number
      t.string :engine_number

      t.timestamps
    end
  end
end
