class AddRecorderToWorkAccomplishments < ActiveRecord::Migration[5.0]
  def change
    add_column :work_accomplishments, :user_id, :integer
    add_index :work_accomplishments, :user_id
  end
end
