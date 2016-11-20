class CreateLaborCosts < ActiveRecord::Migration[5.0]
  def change
    create_table :labor_costs do |t|
      t.string :personnel
      t.decimal :number_of_personnel
      t.decimal :number_of_days
      t.decimal :daily_rate
      t.decimal :total_cost
      t.belongs_to :work_detail, index: true, foreign_key: true

      t.timestamps
    end
  end
end
