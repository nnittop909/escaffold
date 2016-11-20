class AddTypeToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :employee_type, :integer
  end
end
