class AddPurposeToEquipmentSchedules < ActiveRecord::Migration[5.0]
  def change
    add_column :equipment_schedules, :purpose, :text
  end
end
