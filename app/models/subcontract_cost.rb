class SubcontractCost < ApplicationRecord
  belongs_to :contractor
  belongs_to :work_detail
end
