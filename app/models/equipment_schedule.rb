class EquipmentSchedule < ApplicationRecord
  belongs_to :equipment
  belongs_to :employee
  belongs_to :project
end
