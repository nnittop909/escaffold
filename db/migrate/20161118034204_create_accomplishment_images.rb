class CreateAccomplishmentImages < ActiveRecord::Migration[5.0]
  def change
    create_table :accomplishment_images do |t|
      t.belongs_to :work_accomplishment, index: true, foreign_key: true
      t.string :caption

      t.timestamps
    end
  end
end
