class CreateEquipmentSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :equipment_schedules do |t|
      t.belongs_to :equipment, index: true, foreign_key: true
      t.belongs_to :employee, index: true, foreign_key: true
      t.belongs_to :project, index: true, foreign_key: true

      t.timestamps
    end
  end
end
