class AddUserIdToTimeExtension < ActiveRecord::Migration[5.0]
  def change
    add_column :time_extensions, :user_id, :integer
    add_index :time_extensions, :user_id
  end
end
