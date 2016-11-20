class AddDateToTimeExtensions < ActiveRecord::Migration[5.0]
  def change
    add_column :time_extensions, :date, :datetime
  end
end
