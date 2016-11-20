class AddWorkDetailIdToTimeExtensions < ActiveRecord::Migration[5.0]
  def change
    add_reference :time_extensions, :work_detail, index: true, foreign_key: true
  end
end
