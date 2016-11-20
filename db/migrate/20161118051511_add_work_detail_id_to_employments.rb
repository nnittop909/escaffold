class AddWorkDetailIdToEmployments < ActiveRecord::Migration[5.0]
  def change
    add_column :employments, :work_detail_id, :integer, index: true, foreign_key: true
  end
end
