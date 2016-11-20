class CreateTimeExtensions < ActiveRecord::Migration[5.0]
  def change
    create_table :time_extensions do |t|
      t.references :project, foreign_key: true
      t.integer :number_of_days
      t.string :remarks

      t.timestamps
    end
  end
end
