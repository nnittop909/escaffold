class AddProjectIdToTimeExtensions < ActiveRecord::Migration[5.0]
  def change
    add_column :time_extensions, :project_id, :integer
    add_index :time_extensions, :project_id
  end
end
