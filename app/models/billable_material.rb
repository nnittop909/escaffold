class BillableMaterial < ApplicationRecord
  belongs_to :contractor
  belongs_to :inventory
  belongs_to :project
end
