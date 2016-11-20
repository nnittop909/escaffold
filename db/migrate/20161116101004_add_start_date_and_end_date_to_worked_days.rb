class AddStartDateAndEndDateToWorkedDays < ActiveRecord::Migration[5.0]
  def change
  	add_column :worked_days, :start_date, :datetime
    add_column :worked_days, :end_date, :datetime
  end
end
